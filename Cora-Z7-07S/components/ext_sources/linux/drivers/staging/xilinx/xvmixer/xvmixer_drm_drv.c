/*
 * Xilinx DRM KMS support for Xilinx Video Mixer
 *
 *  Copyright (C) 2017 Xilinx, Inc.
 *
 *  Author: Jeffrey Mouroux <jmouroux@xilinx.com>
 *
 *  Based on Xilinx drm driver by Hyun Kwon <hyunk@xilinx.com>
 *  Copyright (C) 2013
 *
 * This software is licensed under the terms of the GNU General Public
 * License version 2, as published by the Free Software Foundation, and
 * may be copied, distributed, and modified under those terms.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 */

#include <drm/drmP.h>
#include <drm/drm_crtc_helper.h>
#include <drm/drm_gem_cma_helper.h>

#include <linux/component.h>
#include <linux/console.h>
#include <linux/device.h>
#include <linux/module.h>
#include <linux/of_graph.h>
#include <linux/of_graph.h>
#include <linux/platform_device.h>

#include "xvmixer_drm_connector.h"
#include "xvmixer_drm_crtc.h"
#include "xvmixer_drm_drv.h"
#include "xvmixer_drm_encoder.h"
#include "xvmixer_drm_fb.h"
#include "xvmixer_drm_gem.h"

#define DRIVER_NAME	"xilinx_drm_mixer"
#define DRIVER_DESC	"Xilinx DRM KMS support for Xilinx Video Mixer"
#define DRIVER_DATE	"20170607"
#define DRIVER_MAJOR	1
#define DRIVER_MINOR	0

static uint xilinx_drm_fbdev_vres = 2;
module_param_named(fbdev_vres, xilinx_drm_fbdev_vres, uint, 0444);
MODULE_PARM_DESC(fbdev_vres,
		 "fbdev virtual resolution multiplier for fb (default: 2)");

/*
 * TODO: The possible pipeline configurations are numerous with Xilinx soft IPs.
 * It's not too bad for now, but the more proper way(Common Display Framework,
 * or some internal abstraction) should be considered, when it reaches a point
 * that such thing is required.
 */

struct xilinx_drm_private {
	struct drm_device *drm;
	struct drm_crtc *crtc;
	struct drm_fb_helper *fb;
	struct platform_device *pdev;
	bool is_master;
};

/**
 * xvmixer_drm_check_format - Check if the given format is supported
 * @drm: DRM device
 * @fourcc: format fourcc
 *
 * Check if the given format @fourcc is supported by the current pipeline
 *
 * Return: true if the format is supported, or false
 */
bool xvmixer_drm_check_format(struct drm_device *drm, uint32_t fourcc)
{
	struct xilinx_drm_private *private = drm->dev_private;

	return xvmixer_drm_crtc_check_format(private->crtc, fourcc);
}

/**
 * xvmixer_drm_get_format - Get the current device format
 * @drm: DRM device
 *
 * Get the current format of pipeline
 *
 * Return: the corresponding DRM_FORMAT_XXX
 */
uint32_t xvmixer_drm_get_format(struct drm_device *drm)
{
	struct xilinx_drm_private *private = drm->dev_private;

	return xvmixer_drm_crtc_get_format(private->crtc);
}

/**
 * xvmixer_drm_get_align - Get the alignment value for pitch
 * @drm: DRM object
 *
 * Get the alignment value for pitch from the plane
 *
 * Return: The alignment value if successful, or the error code.
 */
unsigned int xvmixer_drm_get_align(struct drm_device *drm)
{
	struct xilinx_drm_private *private = drm->dev_private;

	return xvmixer_drm_crtc_get_align(private->crtc);
}

void xvmixer_drm_set_config(struct drm_device *drm, struct drm_mode_set *set)
{
	struct xilinx_drm_private *private = drm->dev_private;

	if (private && private->fb)
		xvmixer_drm_fb_set_config(private->fb, set);
}

/* poll changed handler */
static void xilinx_drm_output_poll_changed(struct drm_device *drm)
{
	struct xilinx_drm_private *private = drm->dev_private;

	xvmixer_drm_fb_hotplug_event(private->fb);
}

static const struct drm_mode_config_funcs xilinx_drm_mode_config_funcs = {
	.fb_create		= xvmixer_drm_fb_create,
	.output_poll_changed	= xilinx_drm_output_poll_changed,
};

/* enable vblank */
static int xilinx_drm_enable_vblank(struct drm_device *drm, unsigned int crtc)
{
	struct xilinx_drm_private *private = drm->dev_private;

	xvmixer_drm_crtc_enable_vblank(private->crtc);

	return 0;
}

/* disable vblank */
static void xilinx_drm_disable_vblank(struct drm_device *drm, unsigned int crtc)
{
	struct xilinx_drm_private *private = drm->dev_private;

	xvmixer_drm_crtc_disable_vblank(private->crtc);
}

/* initialize mode config */
static void xilinx_drm_mode_config_init(struct drm_device *drm)
{
	struct xilinx_drm_private *private = drm->dev_private;

	drm->mode_config.min_width = 0;
	drm->mode_config.min_height = 0;

	drm->mode_config.max_width =
		xvmixer_drm_crtc_get_max_width(private->crtc);

	drm->mode_config.max_height =
		xvmixer_drm_crtc_get_max_height(private->crtc);

	if (drm->mode_config.max_height <= 0)
		drm->mode_config.max_height = 4096;

	if (drm->mode_config.max_width <= 0)
		drm->mode_config.max_width = 4096;

	drm->mode_config.cursor_width =
		xvmixer_drm_crtc_get_max_cursor_width(private->crtc);

	drm->mode_config.cursor_height =
		xvmixer_drm_crtc_get_max_cursor_height(private->crtc);

	drm->mode_config.funcs = &xilinx_drm_mode_config_funcs;
}

/* JPM TODO test if this new approach continue to work */
/* get bpp of given format */
unsigned int xvmixer_drm_format_bpp(uint32_t drm_format)
{
	int i;
	unsigned int tot_bpp = 0;
	unsigned int plane_cnt;

	plane_cnt = drm_format_num_planes(drm_format);

	for (i = 0;  i <  plane_cnt; i++)
		tot_bpp += (drm_format_plane_cpp(drm_format, 0) << 3);

	return tot_bpp;
}

static int xilinx_drm_bind(struct device *dev)
{
	struct xilinx_drm_private *private = dev_get_drvdata(dev);
	struct drm_device *drm = private->drm;

	return component_bind_all(dev, drm);
}

static void xilinx_drm_unbind(struct device *dev)
{
	dev_set_drvdata(dev, NULL);
}

static const struct component_master_ops xilinx_drm_ops = {
	.bind	= xilinx_drm_bind,
	.unbind	= xilinx_drm_unbind,
};

static int compare_of(struct device *dev, void *data)
{
	struct device_node *np = data;

	return dev->of_node == np;
}

/* load xilinx drm */
static int xilinx_drm_load(struct drm_device *drm, unsigned long flags)
{
	struct xilinx_drm_private *private;
	struct drm_encoder *encoder;
	struct drm_connector *connector;
	struct device_node *encoder_node, *ep = NULL, *remote;
	struct platform_device *pdev = drm->platformdev;
	struct component_match *match = NULL;
	unsigned int bpp, align, i = 0;
	int ret;

	private = devm_kzalloc(drm->dev, sizeof(*private), GFP_KERNEL);
	if (!private)
		return -ENOMEM;

	drm_mode_config_init(drm);

	/* create a xilinx crtc */
	private->crtc = xvmixer_drm_crtc_create(drm);
	if (IS_ERR(private->crtc)) {
		DRM_DEBUG_DRIVER("failed to create xilinx crtc\n");
		ret = PTR_ERR(private->crtc);
		goto err_out;
	}

	while ((encoder_node = of_parse_phandle(drm->dev->of_node,
						"xlnx,encoder-slave", i))) {
		encoder = xvmixer_drm_encoder_create(drm, encoder_node);
		of_node_put(encoder_node);
		if (IS_ERR(encoder)) {
			DRM_DEBUG_DRIVER("failed to create xilinx encoder\n");
			ret = PTR_ERR(encoder);
			goto err_out;
		}

		connector = xvmixer_drm_connector_create(drm, encoder, i);
		if (IS_ERR(connector)) {
			DRM_DEBUG_DRIVER("failed to create xilinx connector\n");
			ret = PTR_ERR(connector);
			goto err_out;
		}

		i++;
	}

	while (1) {
		ep = of_graph_get_next_endpoint(drm->dev->of_node, ep);
		if (!ep)
			break;

		of_node_put(ep);
		remote = of_graph_get_remote_port_parent(ep);
		if (!remote || !of_device_is_available(remote)) {
			of_node_put(remote);
			continue;
		}

		component_match_add(drm->dev, &match, compare_of, remote);
		of_node_put(remote);
		i++;
	}

	if (i == 0) {
		DRM_ERROR("failed to get an encoder slave node\n");
		return -ENODEV;
	}

	ret = drm_vblank_init(drm, 1);
	if (ret) {
		dev_err(&pdev->dev, "failed to initialize vblank\n");
		goto err_master;
	}

	/* enable irq to enable vblank feature */
	drm->irq_enabled = 1;

	drm->dev_private = private;
	private->drm = drm;
	xilinx_drm_mode_config_init(drm);

	/* initialize xilinx framebuffer */
	bpp = xvmixer_drm_format_bpp(xvmixer_drm_crtc_get_format(private->crtc));
	align = xvmixer_drm_crtc_get_align(private->crtc);
	private->fb = xvmixer_drm_fb_init(drm, bpp, 1, 1, align,
					 xilinx_drm_fbdev_vres);
	if (IS_ERR(private->fb)) {
		DRM_ERROR("failed to initialize drm cma fb\n");
		ret = PTR_ERR(private->fb);
		goto err_fb;
	}

	drm_kms_helper_poll_init(drm);

	drm_helper_disable_unused_functions(drm);

	platform_set_drvdata(pdev, private);

	if (match) {
		ret = component_master_add_with_match(drm->dev,
						      &xilinx_drm_ops, match);
		if (ret)
			goto err_fb;
	}

	return 0;

err_fb:
	drm_vblank_cleanup(drm);
err_master:
	component_master_del(drm->dev, &xilinx_drm_ops);
err_out:
	drm_mode_config_cleanup(drm);
	if (ret == -EPROBE_DEFER)
		DRM_INFO("load() is defered & will be called again\n");
	return ret;
}

/* unload xilinx drm */
static int xilinx_drm_unload(struct drm_device *drm)
{
	struct xilinx_drm_private *private = drm->dev_private;

	drm_vblank_cleanup(drm);
	component_master_del(drm->dev, &xilinx_drm_ops);
	drm_kms_helper_poll_fini(drm);
	xvmixer_drm_fb_fini(private->fb);
	drm_mode_config_cleanup(drm);

	return 0;
}

int xilinx_drm_open(struct drm_device *dev, struct drm_file *file)
{
	struct xilinx_drm_private *private = dev->dev_private;

	if (!(drm_is_primary_client(file) && !dev->master) &&
	    capable(CAP_SYS_ADMIN)) {
		file->is_master = 1;
		private->is_master = true;
	}

	return 0;
}

/* preclose */
static void xilinx_drm_preclose(struct drm_device *drm, struct drm_file *file)
{
	struct xilinx_drm_private *private = drm->dev_private;

	/* cancel pending page flip request */
	xvmixer_drm_crtc_cancel_page_flip(private->crtc, file);

	if (private->is_master) {
		private->is_master = false;
		file->is_master = 0;
	}
}

/* restore the default mode when xilinx drm is released */
static void xilinx_drm_lastclose(struct drm_device *drm)
{
	struct xilinx_drm_private *private = drm->dev_private;

	xvmixer_drm_crtc_restore(private->crtc);

	xvmixer_drm_fb_restore_mode(private->fb);
}

static const struct file_operations xilinx_drm_fops = {
	.owner		= THIS_MODULE,
	.open		= drm_open,
	.release	= drm_release,
	.unlocked_ioctl	= drm_ioctl,
	.mmap		= drm_gem_cma_mmap,
	.poll		= drm_poll,
	.read		= drm_read,
#ifdef CONFIG_COMPAT
	.compat_ioctl	= drm_compat_ioctl,
#endif
	.llseek		= noop_llseek,
};

static struct drm_driver xilinx_drm_driver = {
	.driver_features		= DRIVER_MODESET | DRIVER_GEM |
					  DRIVER_PRIME,
	.load				= xilinx_drm_load,
	.unload				= xilinx_drm_unload,
	.open				= xilinx_drm_open,
	.preclose			= xilinx_drm_preclose,
	.lastclose			= xilinx_drm_lastclose,

	.get_vblank_counter		= drm_vblank_no_hw_counter,
	.enable_vblank			= xilinx_drm_enable_vblank,
	.disable_vblank			= xilinx_drm_disable_vblank,

	.prime_handle_to_fd		= drm_gem_prime_handle_to_fd,
	.prime_fd_to_handle		= drm_gem_prime_fd_to_handle,
	.gem_prime_export		= drm_gem_prime_export,
	.gem_prime_import		= drm_gem_prime_import,
	.gem_prime_get_sg_table		= drm_gem_cma_prime_get_sg_table,
	.gem_prime_import_sg_table	= drm_gem_cma_prime_import_sg_table,
	.gem_prime_vmap			= drm_gem_cma_prime_vmap,
	.gem_prime_vunmap		= drm_gem_cma_prime_vunmap,
	.gem_prime_mmap			= drm_gem_cma_prime_mmap,
	.gem_free_object		= drm_gem_cma_free_object,
	.gem_vm_ops			= &drm_gem_cma_vm_ops,
	.dumb_create			= xvmixer_drm_gem_cma_dumb_create,
	.dumb_map_offset		= drm_gem_cma_dumb_map_offset,
	.dumb_destroy			= drm_gem_dumb_destroy,

	.fops				= &xilinx_drm_fops,

	.name				= DRIVER_NAME,
	.desc				= DRIVER_DESC,
	.date				= DRIVER_DATE,
	.major				= DRIVER_MAJOR,
	.minor				= DRIVER_MINOR,
};

#if defined(CONFIG_PM_SLEEP)
/* suspend xilinx drm */
static int xilinx_drm_pm_suspend(struct device *dev)
{
	struct xilinx_drm_private *private = dev_get_drvdata(dev);
	struct drm_device *drm = private->drm;
	struct drm_connector *connector;

	drm_kms_helper_poll_disable(drm);

	if (!console_suspend_enabled)
		return 0;

	drm_modeset_lock_all(drm);
	list_for_each_entry(connector, &drm->mode_config.connector_list, head) {
		int old_dpms = connector->dpms;

		if (connector->funcs->dpms)
			connector->funcs->dpms(connector,
					       DRM_MODE_DPMS_SUSPEND);

		connector->dpms = old_dpms;
	}
	drm_modeset_unlock_all(drm);

	return 0;
}

/* resume xilinx drm */
static int xilinx_drm_pm_resume(struct device *dev)
{
	struct xilinx_drm_private *private = dev_get_drvdata(dev);
	struct drm_device *drm = private->drm;
	struct drm_connector *connector;

	if (!console_suspend_enabled)
		return 0;

	drm_modeset_lock_all(drm);
	list_for_each_entry(connector, &drm->mode_config.connector_list, head) {
		if (connector->funcs->dpms) {
			int dpms = connector->dpms;

			connector->dpms = DRM_MODE_DPMS_OFF;
			connector->funcs->dpms(connector, dpms);
		}
	}
	drm_modeset_unlock_all(drm);

	drm_helper_resume_force_mode(drm);

	drm_modeset_lock_all(drm);
	drm_kms_helper_poll_enable_locked(drm);
	drm_modeset_unlock_all(drm);

	return 0;
}
#endif

static const struct dev_pm_ops xilinx_drm_pm_ops = {
	SET_SYSTEM_SLEEP_PM_OPS(xilinx_drm_pm_suspend, xilinx_drm_pm_resume)
};

/* init xilinx drm platform */
static int xilinx_drm_platform_probe(struct platform_device *pdev)
{
	return drm_platform_init(&xilinx_drm_driver, pdev);
}

/* exit xilinx drm platform */
static int xilinx_drm_platform_remove(struct platform_device *pdev)
{
	struct xilinx_drm_private *private = platform_get_drvdata(pdev);

	drm_put_dev(private->drm);

	return 0;
}

static void xilinx_drm_platform_shutdown(struct platform_device *pdev)
{
	struct xilinx_drm_private *private = platform_get_drvdata(pdev);

	drm_put_dev(private->drm);
}

static const struct of_device_id xilinx_drm_of_match[] = {
	{ .compatible = "xlnx,drm,video-mixer", },
	{ /* end of table */ },
};
MODULE_DEVICE_TABLE(of, xilinx_drm_of_match);

static struct platform_driver xilinx_drm_private_driver = {
	.probe			= xilinx_drm_platform_probe,
	.remove			= xilinx_drm_platform_remove,
	.shutdown		= xilinx_drm_platform_shutdown,
	.driver			= {
		.name		= "xilinx-drm-mixer",
		.pm		= &xilinx_drm_pm_ops,
		.of_match_table	= xilinx_drm_of_match,
	},
};

module_platform_driver(xilinx_drm_private_driver);

MODULE_AUTHOR("Xilinx, Inc.");
MODULE_DESCRIPTION("Xilinx DRM KMS Video Mixer Driver");
MODULE_LICENSE("GPL v2");
