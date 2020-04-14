	.text
$Ltext0:
	.section	.text.enable_caches,"ax",@progbits
	.align	2
	.globl	enable_caches
$LFB0:
$LM1:
	.ent	enable_caches
	.type	enable_caches, @function
enable_caches:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
$LCFI0:
	swi	r19,r1,4
$LCFI1:
	addk	r19,r1,r0
$LCFI2:
$LM2:
	nop
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	enable_caches
$LFE0:
$Lfe1:
	.size	enable_caches,$Lfe1-enable_caches
	.section	.text.disable_caches,"ax",@progbits
	.align	2
	.globl	disable_caches
$LFB1:
$LM3:
	.ent	disable_caches
	.type	disable_caches, @function
disable_caches:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
$LCFI3:
	swi	r19,r1,4
$LCFI4:
	addk	r19,r1,r0
$LCFI5:
$LM4:
	nop
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	disable_caches
$LFE1:
$Lfe2:
	.size	disable_caches,$Lfe2-disable_caches
	.section	.text.init_uart,"ax",@progbits
	.align	2
	.globl	init_uart
$LFB2:
$LM5:
	.ent	init_uart
	.type	init_uart, @function
init_uart:
	.frame	r19,8,r15		# vars= 0, regs= 1, args= 0
	.mask	0x00080000
	addik	r1,r1,-8
$LCFI6:
	swi	r19,r1,4
$LCFI7:
	addk	r19,r1,r0
$LCFI8:
$LM6:
	nop
	addk	r1,r19,r0
	lwi	r19,r1,4
	addik	r1,r1,8
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	init_uart
$LFE2:
$Lfe3:
	.size	init_uart,$Lfe3-init_uart
	.section	.text.init_platform,"ax",@progbits
	.align	2
	.globl	init_platform
$LFB3:
$LM7:
	.ent	init_platform
	.type	init_platform, @function
init_platform:
	.frame	r19,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
$LCFI9:
	swi	r15,r1,0
	swi	r19,r1,28
$LCFI10:
	addk	r19,r1,r0
$LCFI11:
$LM8:
	brlid	r15,enable_caches
	nop		# Unfilled delay slot

$LM9:
	brlid	r15,init_uart
	nop		# Unfilled delay slot

$LM10:
	nop
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	addik	r1,r1,32
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	init_platform
$LFE3:
$Lfe4:
	.size	init_platform,$Lfe4-init_platform
	.section	.text.cleanup_platform,"ax",@progbits
	.align	2
	.globl	cleanup_platform
$LFB4:
$LM11:
	.ent	cleanup_platform
	.type	cleanup_platform, @function
cleanup_platform:
	.frame	r19,32,r15		# vars= 0, regs= 1, args= 24
	.mask	0x00088000
	addik	r1,r1,-32
$LCFI12:
	swi	r15,r1,0
	swi	r19,r1,28
$LCFI13:
	addk	r19,r1,r0
$LCFI14:
$LM12:
	brlid	r15,disable_caches
	nop		# Unfilled delay slot

	nop
	lwi	r15,r1,0
	addk	r1,r19,r0
	lwi	r19,r1,28
	addik	r1,r1,32
	rtsd	r15,8 
	nop		# Unfilled delay slot

	.end	cleanup_platform
$LFE4:
$Lfe5:
	.size	cleanup_platform,$Lfe5-cleanup_platform
	.section	.debug_frame,"",@progbits
$Lframe0:
	.4byte	$LECIE0-$LSCIE0
$LSCIE0:
	.4byte	0xffffffff
	.byte	0x3
	.ascii "\0"
	.uleb128 0x1
	.sleb128 -4
	.uleb128 0xf
	.byte	0xc
	.uleb128 0x1
	.uleb128 0
	.align	2
$LECIE0:
$LSFDE0:
	.4byte	$LEFDE0-$LASFDE0
$LASFDE0:
	.4byte	$Lframe0
	.4byte	$LFB0
	.4byte	$LFE0-$LFB0
	.byte	0x4
	.4byte	$LCFI0-$LFB0
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	$LCFI1-$LCFI0
	.byte	0x93
	.uleb128 0x1
	.byte	0x4
	.4byte	$LCFI2-$LCFI1
	.byte	0xd
	.uleb128 0x13
	.align	2
$LEFDE0:
$LSFDE2:
	.4byte	$LEFDE2-$LASFDE2
$LASFDE2:
	.4byte	$Lframe0
	.4byte	$LFB1
	.4byte	$LFE1-$LFB1
	.byte	0x4
	.4byte	$LCFI3-$LFB1
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	$LCFI4-$LCFI3
	.byte	0x93
	.uleb128 0x1
	.byte	0x4
	.4byte	$LCFI5-$LCFI4
	.byte	0xd
	.uleb128 0x13
	.align	2
$LEFDE2:
$LSFDE4:
	.4byte	$LEFDE4-$LASFDE4
$LASFDE4:
	.4byte	$Lframe0
	.4byte	$LFB2
	.4byte	$LFE2-$LFB2
	.byte	0x4
	.4byte	$LCFI6-$LFB2
	.byte	0xe
	.uleb128 0x8
	.byte	0x4
	.4byte	$LCFI7-$LCFI6
	.byte	0x93
	.uleb128 0x1
	.byte	0x4
	.4byte	$LCFI8-$LCFI7
	.byte	0xd
	.uleb128 0x13
	.align	2
$LEFDE4:
$LSFDE6:
	.4byte	$LEFDE6-$LASFDE6
$LASFDE6:
	.4byte	$Lframe0
	.4byte	$LFB3
	.4byte	$LFE3-$LFB3
	.byte	0x4
	.4byte	$LCFI9-$LFB3
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	$LCFI10-$LCFI9
	.byte	0x8f
	.uleb128 0x8
	.byte	0x93
	.uleb128 0x1
	.byte	0x4
	.4byte	$LCFI11-$LCFI10
	.byte	0xd
	.uleb128 0x13
	.align	2
$LEFDE6:
$LSFDE8:
	.4byte	$LEFDE8-$LASFDE8
$LASFDE8:
	.4byte	$Lframe0
	.4byte	$LFB4
	.4byte	$LFE4-$LFB4
	.byte	0x4
	.4byte	$LCFI12-$LFB4
	.byte	0xe
	.uleb128 0x20
	.byte	0x4
	.4byte	$LCFI13-$LCFI12
	.byte	0x8f
	.uleb128 0x8
	.byte	0x93
	.uleb128 0x1
	.byte	0x4
	.4byte	$LCFI14-$LCFI13
	.byte	0xd
	.uleb128 0x13
	.align	2
$LEFDE8:
	.text
$Letext0:
	.section	.debug_info,"",@progbits
$Ldebug_info0:
	.4byte	0x7b
	.2byte	0x4
	.4byte	$Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.4byte	$LASF225
	.byte	0xc
	.4byte	$LASF226
	.4byte	$LASF227
	.4byte	$Ldebug_ranges0+0
	.4byte	0
	.4byte	$Ldebug_line0
	.4byte	$Ldebug_macro0
	.uleb128 0x2
	.4byte	$LASF220
	.byte	0x1
	.byte	0x5e
	.4byte	$LFB4
	.4byte	$LFE4-$LFB4
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x2
	.4byte	$LASF221
	.byte	0x1
	.byte	0x50
	.4byte	$LFB3
	.4byte	$LFE3-$LFB3
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3
	.4byte	$LASF222
	.byte	0x1
	.byte	0x48
	.4byte	$LFB2
	.4byte	$LFE2-$LFB2
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3
	.4byte	$LASF223
	.byte	0x1
	.byte	0x3d
	.4byte	$LFB1
	.4byte	$LFE1-$LFB1
	.uleb128 0x1
	.byte	0x9c
	.uleb128 0x3
	.4byte	$LASF224
	.byte	0x1
	.byte	0x2f
	.4byte	$LFB0
	.4byte	$LFE0-$LFB0
	.uleb128 0x1
	.byte	0x9c
	.byte	0
	.section	.debug_abbrev,"",@progbits
$Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0xe
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x1b
	.uleb128 0xe
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x17
	.uleb128 0x2119
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_aranges,"",@progbits
	.4byte	0x3c
	.2byte	0x2
	.4byte	$Ldebug_info0
	.byte	0x4
	.byte	0
	.2byte	0
	.2byte	0
	.4byte	$LFB0
	.4byte	$LFE0-$LFB0
	.4byte	$LFB1
	.4byte	$LFE1-$LFB1
	.4byte	$LFB2
	.4byte	$LFE2-$LFB2
	.4byte	$LFB3
	.4byte	$LFE3-$LFB3
	.4byte	$LFB4
	.4byte	$LFE4-$LFB4
	.4byte	0
	.4byte	0
	.section	.debug_ranges,"",@progbits
$Ldebug_ranges0:
	.4byte	$LFB0
	.4byte	$LFE0
	.4byte	$LFB1
	.4byte	$LFE1
	.4byte	$LFB2
	.4byte	$LFE2
	.4byte	$LFB3
	.4byte	$LFE3
	.4byte	$LFB4
	.4byte	$LFE4
	.4byte	0
	.4byte	0
	.section	.debug_macro,"",@progbits
$Ldebug_macro0:
	.2byte	0x4
	.byte	0x2
	.4byte	$Ldebug_line0
	.byte	0x3
	.uleb128 0
	.uleb128 0x1
	.byte	0x5
	.uleb128 0x1
	.4byte	$LASF0
	.byte	0x5
	.uleb128 0x2
	.4byte	$LASF1
	.byte	0x5
	.uleb128 0x3
	.4byte	$LASF2
	.byte	0x5
	.uleb128 0x4
	.4byte	$LASF3
	.byte	0x5
	.uleb128 0x5
	.4byte	$LASF4
	.byte	0x5
	.uleb128 0x6
	.4byte	$LASF5
	.byte	0x5
	.uleb128 0x7
	.4byte	$LASF6
	.byte	0x5
	.uleb128 0x8
	.4byte	$LASF7
	.byte	0x5
	.uleb128 0x9
	.4byte	$LASF8
	.byte	0x5
	.uleb128 0xa
	.4byte	$LASF9
	.byte	0x5
	.uleb128 0xb
	.4byte	$LASF10
	.byte	0x5
	.uleb128 0xc
	.4byte	$LASF11
	.byte	0x5
	.uleb128 0xd
	.4byte	$LASF12
	.byte	0x5
	.uleb128 0xe
	.4byte	$LASF13
	.byte	0x5
	.uleb128 0xf
	.4byte	$LASF14
	.byte	0x5
	.uleb128 0x10
	.4byte	$LASF15
	.byte	0x5
	.uleb128 0x11
	.4byte	$LASF16
	.byte	0x5
	.uleb128 0x12
	.4byte	$LASF17
	.byte	0x5
	.uleb128 0x13
	.4byte	$LASF18
	.byte	0x5
	.uleb128 0x14
	.4byte	$LASF19
	.byte	0x5
	.uleb128 0x15
	.4byte	$LASF20
	.byte	0x5
	.uleb128 0x16
	.4byte	$LASF21
	.byte	0x5
	.uleb128 0x17
	.4byte	$LASF22
	.byte	0x5
	.uleb128 0x18
	.4byte	$LASF23
	.byte	0x5
	.uleb128 0x19
	.4byte	$LASF24
	.byte	0x5
	.uleb128 0x1a
	.4byte	$LASF25
	.byte	0x5
	.uleb128 0x1b
	.4byte	$LASF26
	.byte	0x5
	.uleb128 0x1c
	.4byte	$LASF27
	.byte	0x5
	.uleb128 0x1d
	.4byte	$LASF28
	.byte	0x5
	.uleb128 0x1e
	.4byte	$LASF29
	.byte	0x5
	.uleb128 0x1f
	.4byte	$LASF30
	.byte	0x5
	.uleb128 0x20
	.4byte	$LASF31
	.byte	0x5
	.uleb128 0x21
	.4byte	$LASF32
	.byte	0x5
	.uleb128 0x22
	.4byte	$LASF33
	.byte	0x5
	.uleb128 0x23
	.4byte	$LASF34
	.byte	0x5
	.uleb128 0x24
	.4byte	$LASF35
	.byte	0x5
	.uleb128 0x25
	.4byte	$LASF36
	.byte	0x5
	.uleb128 0x26
	.4byte	$LASF37
	.byte	0x5
	.uleb128 0x27
	.4byte	$LASF38
	.byte	0x5
	.uleb128 0x28
	.4byte	$LASF39
	.byte	0x5
	.uleb128 0x29
	.4byte	$LASF40
	.byte	0x5
	.uleb128 0x2a
	.4byte	$LASF41
	.byte	0x5
	.uleb128 0x2b
	.4byte	$LASF42
	.byte	0x5
	.uleb128 0x2c
	.4byte	$LASF43
	.byte	0x5
	.uleb128 0x2d
	.4byte	$LASF44
	.byte	0x5
	.uleb128 0x2e
	.4byte	$LASF45
	.byte	0x5
	.uleb128 0x2f
	.4byte	$LASF46
	.byte	0x5
	.uleb128 0x30
	.4byte	$LASF47
	.byte	0x5
	.uleb128 0x31
	.4byte	$LASF48
	.byte	0x5
	.uleb128 0x32
	.4byte	$LASF49
	.byte	0x5
	.uleb128 0x33
	.4byte	$LASF50
	.byte	0x5
	.uleb128 0x34
	.4byte	$LASF51
	.byte	0x5
	.uleb128 0x35
	.4byte	$LASF52
	.byte	0x5
	.uleb128 0x36
	.4byte	$LASF53
	.byte	0x5
	.uleb128 0x37
	.4byte	$LASF54
	.byte	0x5
	.uleb128 0x38
	.4byte	$LASF55
	.byte	0x5
	.uleb128 0x39
	.4byte	$LASF56
	.byte	0x5
	.uleb128 0x3a
	.4byte	$LASF57
	.byte	0x5
	.uleb128 0x3b
	.4byte	$LASF58
	.byte	0x5
	.uleb128 0x3c
	.4byte	$LASF59
	.byte	0x5
	.uleb128 0x3d
	.4byte	$LASF60
	.byte	0x5
	.uleb128 0x3e
	.4byte	$LASF61
	.byte	0x5
	.uleb128 0x3f
	.4byte	$LASF62
	.byte	0x5
	.uleb128 0x40
	.4byte	$LASF63
	.byte	0x5
	.uleb128 0x41
	.4byte	$LASF64
	.byte	0x5
	.uleb128 0x42
	.4byte	$LASF65
	.byte	0x5
	.uleb128 0x43
	.4byte	$LASF66
	.byte	0x5
	.uleb128 0x44
	.4byte	$LASF67
	.byte	0x5
	.uleb128 0x45
	.4byte	$LASF68
	.byte	0x5
	.uleb128 0x46
	.4byte	$LASF69
	.byte	0x5
	.uleb128 0x47
	.4byte	$LASF70
	.byte	0x5
	.uleb128 0x48
	.4byte	$LASF71
	.byte	0x5
	.uleb128 0x49
	.4byte	$LASF72
	.byte	0x5
	.uleb128 0x4a
	.4byte	$LASF73
	.byte	0x5
	.uleb128 0x4b
	.4byte	$LASF74
	.byte	0x5
	.uleb128 0x4c
	.4byte	$LASF75
	.byte	0x5
	.uleb128 0x4d
	.4byte	$LASF76
	.byte	0x5
	.uleb128 0x4e
	.4byte	$LASF77
	.byte	0x5
	.uleb128 0x4f
	.4byte	$LASF78
	.byte	0x5
	.uleb128 0x50
	.4byte	$LASF79
	.byte	0x5
	.uleb128 0x51
	.4byte	$LASF80
	.byte	0x5
	.uleb128 0x52
	.4byte	$LASF81
	.byte	0x5
	.uleb128 0x53
	.4byte	$LASF82
	.byte	0x5
	.uleb128 0x54
	.4byte	$LASF83
	.byte	0x5
	.uleb128 0x55
	.4byte	$LASF84
	.byte	0x5
	.uleb128 0x56
	.4byte	$LASF85
	.byte	0x5
	.uleb128 0x57
	.4byte	$LASF86
	.byte	0x5
	.uleb128 0x58
	.4byte	$LASF87
	.byte	0x5
	.uleb128 0x59
	.4byte	$LASF88
	.byte	0x5
	.uleb128 0x5a
	.4byte	$LASF89
	.byte	0x5
	.uleb128 0x5b
	.4byte	$LASF90
	.byte	0x5
	.uleb128 0x5c
	.4byte	$LASF91
	.byte	0x5
	.uleb128 0x5d
	.4byte	$LASF92
	.byte	0x5
	.uleb128 0x5e
	.4byte	$LASF93
	.byte	0x5
	.uleb128 0x5f
	.4byte	$LASF94
	.byte	0x5
	.uleb128 0x60
	.4byte	$LASF95
	.byte	0x5
	.uleb128 0x61
	.4byte	$LASF96
	.byte	0x5
	.uleb128 0x62
	.4byte	$LASF97
	.byte	0x5
	.uleb128 0x63
	.4byte	$LASF98
	.byte	0x5
	.uleb128 0x64
	.4byte	$LASF99
	.byte	0x5
	.uleb128 0x65
	.4byte	$LASF100
	.byte	0x5
	.uleb128 0x66
	.4byte	$LASF101
	.byte	0x5
	.uleb128 0x67
	.4byte	$LASF102
	.byte	0x5
	.uleb128 0x68
	.4byte	$LASF103
	.byte	0x5
	.uleb128 0x69
	.4byte	$LASF104
	.byte	0x5
	.uleb128 0x6a
	.4byte	$LASF105
	.byte	0x5
	.uleb128 0x6b
	.4byte	$LASF106
	.byte	0x5
	.uleb128 0x6c
	.4byte	$LASF107
	.byte	0x5
	.uleb128 0x6d
	.4byte	$LASF108
	.byte	0x5
	.uleb128 0x6e
	.4byte	$LASF109
	.byte	0x5
	.uleb128 0x6f
	.4byte	$LASF110
	.byte	0x5
	.uleb128 0x70
	.4byte	$LASF111
	.byte	0x5
	.uleb128 0x71
	.4byte	$LASF112
	.byte	0x5
	.uleb128 0x72
	.4byte	$LASF113
	.byte	0x5
	.uleb128 0x73
	.4byte	$LASF114
	.byte	0x5
	.uleb128 0x74
	.4byte	$LASF115
	.byte	0x5
	.uleb128 0x75
	.4byte	$LASF116
	.byte	0x5
	.uleb128 0x76
	.4byte	$LASF117
	.byte	0x5
	.uleb128 0x77
	.4byte	$LASF118
	.byte	0x5
	.uleb128 0x78
	.4byte	$LASF119
	.byte	0x5
	.uleb128 0x79
	.4byte	$LASF120
	.byte	0x5
	.uleb128 0x7a
	.4byte	$LASF121
	.byte	0x5
	.uleb128 0x7b
	.4byte	$LASF122
	.byte	0x5
	.uleb128 0x7c
	.4byte	$LASF123
	.byte	0x5
	.uleb128 0x7d
	.4byte	$LASF124
	.byte	0x5
	.uleb128 0x7e
	.4byte	$LASF125
	.byte	0x5
	.uleb128 0x7f
	.4byte	$LASF126
	.byte	0x5
	.uleb128 0x80
	.4byte	$LASF127
	.byte	0x5
	.uleb128 0x81
	.4byte	$LASF128
	.byte	0x5
	.uleb128 0x82
	.4byte	$LASF129
	.byte	0x5
	.uleb128 0x83
	.4byte	$LASF130
	.byte	0x5
	.uleb128 0x84
	.4byte	$LASF131
	.byte	0x5
	.uleb128 0x85
	.4byte	$LASF132
	.byte	0x5
	.uleb128 0x86
	.4byte	$LASF133
	.byte	0x5
	.uleb128 0x87
	.4byte	$LASF134
	.byte	0x5
	.uleb128 0x88
	.4byte	$LASF135
	.byte	0x5
	.uleb128 0x89
	.4byte	$LASF136
	.byte	0x5
	.uleb128 0x8a
	.4byte	$LASF137
	.byte	0x5
	.uleb128 0x8b
	.4byte	$LASF138
	.byte	0x5
	.uleb128 0x8c
	.4byte	$LASF139
	.byte	0x5
	.uleb128 0x8d
	.4byte	$LASF140
	.byte	0x5
	.uleb128 0x8e
	.4byte	$LASF141
	.byte	0x5
	.uleb128 0x8f
	.4byte	$LASF142
	.byte	0x5
	.uleb128 0x90
	.4byte	$LASF143
	.byte	0x5
	.uleb128 0x91
	.4byte	$LASF144
	.byte	0x5
	.uleb128 0x92
	.4byte	$LASF145
	.byte	0x5
	.uleb128 0x93
	.4byte	$LASF146
	.byte	0x5
	.uleb128 0x94
	.4byte	$LASF147
	.byte	0x5
	.uleb128 0x95
	.4byte	$LASF148
	.byte	0x5
	.uleb128 0x96
	.4byte	$LASF149
	.byte	0x5
	.uleb128 0x97
	.4byte	$LASF150
	.byte	0x5
	.uleb128 0x98
	.4byte	$LASF151
	.byte	0x5
	.uleb128 0x99
	.4byte	$LASF152
	.byte	0x5
	.uleb128 0x9a
	.4byte	$LASF153
	.byte	0x5
	.uleb128 0x9b
	.4byte	$LASF154
	.byte	0x5
	.uleb128 0x9c
	.4byte	$LASF155
	.byte	0x5
	.uleb128 0x9d
	.4byte	$LASF156
	.byte	0x5
	.uleb128 0x9e
	.4byte	$LASF157
	.byte	0x5
	.uleb128 0x9f
	.4byte	$LASF158
	.byte	0x5
	.uleb128 0xa0
	.4byte	$LASF159
	.byte	0x5
	.uleb128 0xa1
	.4byte	$LASF160
	.byte	0x5
	.uleb128 0xa2
	.4byte	$LASF161
	.byte	0x5
	.uleb128 0xa3
	.4byte	$LASF162
	.byte	0x5
	.uleb128 0xa4
	.4byte	$LASF163
	.byte	0x5
	.uleb128 0xa5
	.4byte	$LASF164
	.byte	0x5
	.uleb128 0xa6
	.4byte	$LASF165
	.byte	0x5
	.uleb128 0xa7
	.4byte	$LASF166
	.byte	0x5
	.uleb128 0xa8
	.4byte	$LASF167
	.byte	0x5
	.uleb128 0xa9
	.4byte	$LASF168
	.byte	0x5
	.uleb128 0xaa
	.4byte	$LASF169
	.byte	0x5
	.uleb128 0xab
	.4byte	$LASF170
	.byte	0x5
	.uleb128 0xac
	.4byte	$LASF171
	.byte	0x5
	.uleb128 0xad
	.4byte	$LASF172
	.byte	0x5
	.uleb128 0xae
	.4byte	$LASF173
	.byte	0x5
	.uleb128 0xaf
	.4byte	$LASF174
	.byte	0x5
	.uleb128 0xb0
	.4byte	$LASF175
	.byte	0x5
	.uleb128 0xb1
	.4byte	$LASF176
	.byte	0x5
	.uleb128 0xb2
	.4byte	$LASF177
	.byte	0x5
	.uleb128 0xb3
	.4byte	$LASF178
	.byte	0x5
	.uleb128 0xb4
	.4byte	$LASF179
	.byte	0x5
	.uleb128 0xb5
	.4byte	$LASF180
	.byte	0x5
	.uleb128 0xb6
	.4byte	$LASF181
	.byte	0x5
	.uleb128 0xb7
	.4byte	$LASF182
	.byte	0x5
	.uleb128 0xb8
	.4byte	$LASF183
	.byte	0x5
	.uleb128 0xb9
	.4byte	$LASF184
	.byte	0x5
	.uleb128 0xba
	.4byte	$LASF185
	.byte	0x5
	.uleb128 0xbb
	.4byte	$LASF186
	.byte	0x5
	.uleb128 0xbc
	.4byte	$LASF187
	.byte	0x5
	.uleb128 0xbd
	.4byte	$LASF188
	.byte	0x5
	.uleb128 0xbe
	.4byte	$LASF189
	.byte	0x5
	.uleb128 0xbf
	.4byte	$LASF190
	.byte	0x5
	.uleb128 0xc0
	.4byte	$LASF191
	.byte	0x5
	.uleb128 0xc1
	.4byte	$LASF192
	.byte	0x5
	.uleb128 0xc2
	.4byte	$LASF193
	.byte	0x5
	.uleb128 0xc3
	.4byte	$LASF194
	.byte	0x5
	.uleb128 0xc4
	.4byte	$LASF195
	.byte	0x5
	.uleb128 0xc5
	.4byte	$LASF196
	.byte	0x5
	.uleb128 0xc6
	.4byte	$LASF197
	.byte	0x5
	.uleb128 0xc7
	.4byte	$LASF198
	.byte	0x5
	.uleb128 0xc8
	.4byte	$LASF199
	.byte	0x5
	.uleb128 0xc9
	.4byte	$LASF200
	.byte	0x5
	.uleb128 0xca
	.4byte	$LASF201
	.byte	0x5
	.uleb128 0xcb
	.4byte	$LASF202
	.byte	0x5
	.uleb128 0xcc
	.4byte	$LASF203
	.byte	0x5
	.uleb128 0xcd
	.4byte	$LASF204
	.byte	0x5
	.uleb128 0xce
	.4byte	$LASF205
	.byte	0x5
	.uleb128 0xcf
	.4byte	$LASF206
	.byte	0x5
	.uleb128 0xd0
	.4byte	$LASF207
	.byte	0x5
	.uleb128 0xd1
	.4byte	$LASF208
	.byte	0x5
	.uleb128 0xd2
	.4byte	$LASF209
	.byte	0x5
	.uleb128 0xd3
	.4byte	$LASF210
	.byte	0x5
	.uleb128 0xd4
	.4byte	$LASF211
	.byte	0x5
	.uleb128 0xd5
	.4byte	$LASF212
	.byte	0x5
	.uleb128 0xd6
	.4byte	$LASF213
	.byte	0x5
	.uleb128 0xd7
	.4byte	$LASF214
	.byte	0x5
	.uleb128 0xd8
	.4byte	$LASF215
	.byte	0x5
	.uleb128 0xd9
	.4byte	$LASF216
	.byte	0x5
	.uleb128 0xda
	.4byte	$LASF217
	.byte	0x5
	.uleb128 0xdb
	.4byte	$LASF218
	.byte	0x5
	.uleb128 0xdc
	.4byte	$LASF219
	.byte	0x4
	.byte	0
	.section	.debug_line,"",@progbits
$Ldebug_line0:
	.4byte	$LELT0-$LSLT0
$LSLT0:
	.2byte	0x4
	.4byte	$LELTP0-$LASLTP0
$LASLTP0:
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0xf6
	.byte	0xf2
	.byte	0xd
	.byte	0
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0x1
	.ascii "../src"
	.byte	0
	.byte	0
	.ascii "platform.c\0"
	.uleb128 0x1
	.uleb128 0
	.uleb128 0
	.byte	0
$LELTP0:
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	$LM1
	.byte	0x45
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	$LM2
	.byte	0x23
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	$LFE0
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	$LM3
	.byte	0x53
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	$LM4
	.byte	0x20
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	$LFE1
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	$LM5
	.byte	0x5e
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	$LM6
	.byte	0x1d
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	$LFE2
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	$LM7
	.byte	0x66
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	$LM8
	.byte	0x21
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	$LM9
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	$LM10
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	$LFE3
	.byte	0
	.uleb128 0x1
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	$LM11
	.byte	0x74
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	$LM12
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x2
	.4byte	$LFE4
	.byte	0
	.uleb128 0x1
	.byte	0x1
$LELT0:
	.section	.debug_str,"MS",@progbits,1
$LASF115:
	.ascii "__UINT_FAST8_MAX__ 0xffffffffU\0"
$LASF226:
	.ascii "../src/platform.c\0"
$LASF23:
	.ascii "__SIZEOF_SIZE_T__ 4\0"
$LASF44:
	.ascii "__INT64_TYPE__ long long int\0"
$LASF102:
	.ascii "__INT64_C(c) c ## LL\0"
$LASF31:
	.ascii "__SIZEOF_POINTER__ 4\0"
$LASF55:
	.ascii "__UINT_LEAST32_TYPE__ long unsigned int\0"
$LASF1:
	.ascii "__STDC_VERSION__ 201112L\0"
$LASF94:
	.ascii "__UINT64_MAX__ 0xffffffffffffffffULL\0"
$LASF147:
	.ascii "__DBL_MAX__ ((double)1.7976931348623157e+308L)\0"
$LASF175:
	.ascii "__DEC64_MANT_DIG__ 16\0"
$LASF125:
	.ascii "__FLT_RADIX__ 2\0"
$LASF84:
	.ascii "__UINTMAX_C(c) c ## ULL\0"
$LASF111:
	.ascii "__INT_FAST8_MAX__ 0x7fffffff\0"
$LASF171:
	.ascii "__DEC32_MIN__ 1E-95DF\0"
$LASF48:
	.ascii "__UINT64_TYPE__ long long unsigned int\0"
$LASF10:
	.ascii "__ATOMIC_SEQ_CST 5\0"
$LASF209:
	.ascii "__MICROBLAZE__ 1\0"
$LASF213:
	.ascii "__MICROBLAZEEL__ 1\0"
$LASF207:
	.ascii "__SIZEOF_WINT_T__ 4\0"
$LASF145:
	.ascii "__DBL_MAX_10_EXP__ 308\0"
$LASF39:
	.ascii "__CHAR32_TYPE__ long unsigned int\0"
$LASF24:
	.ascii "__CHAR_BIT__ 8\0"
$LASF152:
	.ascii "__DBL_HAS_INFINITY__ 1\0"
$LASF156:
	.ascii "__LDBL_MIN_EXP__ (-1021)\0"
$LASF216:
	.ascii "HAVE_HW_DIV 1\0"
$LASF4:
	.ascii "__STDC_HOSTED__ 1\0"
$LASF160:
	.ascii "__DECIMAL_DIG__ 17\0"
$LASF219:
	.ascii "__HAVE_HW_BSHIFT__ 1\0"
$LASF161:
	.ascii "__LDBL_MAX__ 1.7976931348623157e+308L\0"
$LASF77:
	.ascii "__WINT_MAX__ 0xffffffffU\0"
$LASF32:
	.ascii "__SIZE_TYPE__ unsigned int\0"
$LASF218:
	.ascii "HAVE_HW_BSHIFT 1\0"
$LASF181:
	.ascii "__DEC64_SUBNORMAL_MIN__ 0.000000000000001E-383DD\0"
$LASF134:
	.ascii "__FLT_MIN__ 1.1754943508222875e-38F\0"
$LASF140:
	.ascii "__DBL_MANT_DIG__ 53\0"
$LASF56:
	.ascii "__UINT_LEAST64_TYPE__ long long unsigned int\0"
$LASF65:
	.ascii "__INTPTR_TYPE__ int\0"
$LASF101:
	.ascii "__INT_LEAST64_MAX__ 0x7fffffffffffffffLL\0"
$LASF45:
	.ascii "__UINT8_TYPE__ unsigned char\0"
$LASF170:
	.ascii "__DEC32_MAX_EXP__ 97\0"
$LASF158:
	.ascii "__LDBL_MAX_EXP__ 1024\0"
$LASF40:
	.ascii "__SIG_ATOMIC_TYPE__ int\0"
$LASF22:
	.ascii "__SIZEOF_LONG_DOUBLE__ 8\0"
$LASF205:
	.ascii "__PRAGMA_REDEFINE_EXTNAME 1\0"
$LASF166:
	.ascii "__LDBL_HAS_INFINITY__ 1\0"
$LASF137:
	.ascii "__FLT_HAS_DENORM__ 1\0"
$LASF208:
	.ascii "__SIZEOF_PTRDIFF_T__ 4\0"
$LASF116:
	.ascii "__UINT_FAST16_MAX__ 0xffffffffU\0"
$LASF119:
	.ascii "__INTPTR_MAX__ 0x7fffffff\0"
$LASF92:
	.ascii "__UINT16_MAX__ 0xffff\0"
$LASF198:
	.ascii "__GCC_ATOMIC_WCHAR_T_LOCK_FREE 2\0"
$LASF41:
	.ascii "__INT8_TYPE__ signed char\0"
$LASF29:
	.ascii "__BYTE_ORDER__ __ORDER_LITTLE_ENDIAN__\0"
$LASF222:
	.ascii "init_uart\0"
$LASF30:
	.ascii "__FLOAT_WORD_ORDER__ __ORDER_LITTLE_ENDIAN__\0"
$LASF43:
	.ascii "__INT32_TYPE__ long int\0"
$LASF50:
	.ascii "__INT_LEAST16_TYPE__ short int\0"
$LASF58:
	.ascii "__INT_FAST16_TYPE__ int\0"
$LASF68:
	.ascii "__has_include_next(STR) __has_include_next__(STR)\0"
$LASF81:
	.ascii "__INTMAX_MAX__ 0x7fffffffffffffffLL\0"
$LASF8:
	.ascii "__VERSION__ \"6.2.0\"\0"
$LASF217:
	.ascii "__HAVE_HW_DIV__ 1\0"
$LASF42:
	.ascii "__INT16_TYPE__ short int\0"
$LASF167:
	.ascii "__LDBL_HAS_QUIET_NAN__ 1\0"
$LASF21:
	.ascii "__SIZEOF_DOUBLE__ 8\0"
$LASF91:
	.ascii "__UINT8_MAX__ 0xff\0"
$LASF80:
	.ascii "__SIZE_MAX__ 0xffffffffU\0"
$LASF100:
	.ascii "__INT32_C(c) c ## L\0"
$LASF26:
	.ascii "__ORDER_LITTLE_ENDIAN__ 1234\0"
$LASF197:
	.ascii "__GCC_ATOMIC_CHAR32_T_LOCK_FREE 2\0"
$LASF37:
	.ascii "__UINTMAX_TYPE__ long long unsigned int\0"
$LASF192:
	.ascii "__NO_INLINE__ 1\0"
$LASF118:
	.ascii "__UINT_FAST64_MAX__ 0xffffffffffffffffULL\0"
$LASF18:
	.ascii "__SIZEOF_LONG_LONG__ 8\0"
$LASF127:
	.ascii "__FLT_DIG__ 6\0"
$LASF220:
	.ascii "cleanup_platform\0"
$LASF206:
	.ascii "__SIZEOF_WCHAR_T__ 4\0"
$LASF12:
	.ascii "__ATOMIC_RELEASE 3\0"
$LASF210:
	.ascii "__microblaze__ 1\0"
$LASF131:
	.ascii "__FLT_MAX_10_EXP__ 38\0"
$LASF113:
	.ascii "__INT_FAST32_MAX__ 0x7fffffff\0"
$LASF78:
	.ascii "__WINT_MIN__ 0U\0"
$LASF223:
	.ascii "disable_caches\0"
$LASF96:
	.ascii "__INT8_C(c) c\0"
$LASF6:
	.ascii "__GNUC_MINOR__ 2\0"
$LASF124:
	.ascii "__DEC_EVAL_METHOD__ 2\0"
$LASF172:
	.ascii "__DEC32_MAX__ 9.999999E96DF\0"
$LASF74:
	.ascii "__LONG_LONG_MAX__ 0x7fffffffffffffffLL\0"
$LASF139:
	.ascii "__FLT_HAS_QUIET_NAN__ 1\0"
$LASF162:
	.ascii "__LDBL_MIN__ 2.2250738585072014e-308L\0"
$LASF90:
	.ascii "__INT64_MAX__ 0x7fffffffffffffffLL\0"
$LASF128:
	.ascii "__FLT_MIN_EXP__ (-125)\0"
$LASF27:
	.ascii "__ORDER_BIG_ENDIAN__ 4321\0"
$LASF38:
	.ascii "__CHAR16_TYPE__ short unsigned int\0"
$LASF211:
	.ascii "_LITTLE_ENDIAN 1\0"
$LASF204:
	.ascii "__GCC_ATOMIC_POINTER_LOCK_FREE 2\0"
$LASF36:
	.ascii "__INTMAX_TYPE__ long long int\0"
$LASF19:
	.ascii "__SIZEOF_SHORT__ 2\0"
$LASF98:
	.ascii "__INT16_C(c) c\0"
$LASF130:
	.ascii "__FLT_MAX_EXP__ 128\0"
$LASF179:
	.ascii "__DEC64_MAX__ 9.999999999999999E384DD\0"
$LASF72:
	.ascii "__INT_MAX__ 0x7fffffff\0"
$LASF202:
	.ascii "__GCC_ATOMIC_LLONG_LOCK_FREE 1\0"
$LASF70:
	.ascii "__SCHAR_MAX__ 0x7f\0"
$LASF7:
	.ascii "__GNUC_PATCHLEVEL__ 0\0"
$LASF146:
	.ascii "__DBL_DECIMAL_DIG__ 17\0"
$LASF141:
	.ascii "__DBL_DIG__ 15\0"
$LASF132:
	.ascii "__FLT_DECIMAL_DIG__ 9\0"
$LASF60:
	.ascii "__INT_FAST64_TYPE__ long long int\0"
$LASF157:
	.ascii "__LDBL_MIN_10_EXP__ (-307)\0"
$LASF63:
	.ascii "__UINT_FAST32_TYPE__ unsigned int\0"
$LASF103:
	.ascii "__UINT_LEAST8_MAX__ 0xff\0"
$LASF184:
	.ascii "__DEC128_MAX_EXP__ 6145\0"
$LASF88:
	.ascii "__INT16_MAX__ 0x7fff\0"
$LASF193:
	.ascii "__GCC_HAVE_SYNC_COMPARE_AND_SWAP_4 1\0"
$LASF164:
	.ascii "__LDBL_DENORM_MIN__ 4.9406564584124654e-324L\0"
$LASF177:
	.ascii "__DEC64_MAX_EXP__ 385\0"
$LASF150:
	.ascii "__DBL_DENORM_MIN__ ((double)4.9406564584124654e-324L)\0"
$LASF25:
	.ascii "__BIGGEST_ALIGNMENT__ 4\0"
$LASF126:
	.ascii "__FLT_MANT_DIG__ 24\0"
$LASF5:
	.ascii "__GNUC__ 6\0"
$LASF57:
	.ascii "__INT_FAST8_TYPE__ int\0"
$LASF199:
	.ascii "__GCC_ATOMIC_SHORT_LOCK_FREE 1\0"
$LASF93:
	.ascii "__UINT32_MAX__ 0xffffffffUL\0"
$LASF114:
	.ascii "__INT_FAST64_MAX__ 0x7fffffffffffffffLL\0"
$LASF186:
	.ascii "__DEC128_MAX__ 9.999999999999999999999999999999999E6144DL\0"
$LASF54:
	.ascii "__UINT_LEAST16_TYPE__ short unsigned int\0"
$LASF144:
	.ascii "__DBL_MAX_EXP__ 1024\0"
$LASF0:
	.ascii "__STDC__ 1\0"
$LASF120:
	.ascii "__UINTPTR_MAX__ 0xffffffffU\0"
$LASF122:
	.ascii "__GCC_IEC_559_COMPLEX 0\0"
$LASF11:
	.ascii "__ATOMIC_ACQUIRE 2\0"
$LASF180:
	.ascii "__DEC64_EPSILON__ 1E-15DD\0"
$LASF83:
	.ascii "__UINTMAX_MAX__ 0xffffffffffffffffULL\0"
$LASF200:
	.ascii "__GCC_ATOMIC_INT_LOCK_FREE 2\0"
$LASF187:
	.ascii "__DEC128_EPSILON__ 1E-33DL\0"
$LASF195:
	.ascii "__GCC_ATOMIC_CHAR_LOCK_FREE 1\0"
$LASF169:
	.ascii "__DEC32_MIN_EXP__ (-94)\0"
$LASF105:
	.ascii "__UINT_LEAST16_MAX__ 0xffff\0"
$LASF155:
	.ascii "__LDBL_DIG__ 15\0"
$LASF163:
	.ascii "__LDBL_EPSILON__ 2.2204460492503131e-16L\0"
$LASF47:
	.ascii "__UINT32_TYPE__ long unsigned int\0"
$LASF148:
	.ascii "__DBL_MIN__ ((double)2.2250738585072014e-308L)\0"
$LASF215:
	.ascii "__HAVE_HW_MUL__ 1\0"
$LASF107:
	.ascii "__UINT_LEAST32_MAX__ 0xffffffffUL\0"
$LASF97:
	.ascii "__INT_LEAST16_MAX__ 0x7fff\0"
$LASF182:
	.ascii "__DEC128_MANT_DIG__ 34\0"
$LASF176:
	.ascii "__DEC64_MIN_EXP__ (-382)\0"
$LASF109:
	.ascii "__UINT_LEAST64_MAX__ 0xffffffffffffffffULL\0"
$LASF76:
	.ascii "__WCHAR_MIN__ (-__WCHAR_MAX__ - 1)\0"
$LASF196:
	.ascii "__GCC_ATOMIC_CHAR16_T_LOCK_FREE 1\0"
$LASF82:
	.ascii "__INTMAX_C(c) c ## LL\0"
$LASF79:
	.ascii "__PTRDIFF_MAX__ 0x7fffffff\0"
$LASF123:
	.ascii "__FLT_EVAL_METHOD__ 0\0"
$LASF49:
	.ascii "__INT_LEAST8_TYPE__ signed char\0"
$LASF106:
	.ascii "__UINT16_C(c) c\0"
$LASF71:
	.ascii "__SHRT_MAX__ 0x7fff\0"
$LASF20:
	.ascii "__SIZEOF_FLOAT__ 4\0"
$LASF75:
	.ascii "__WCHAR_MAX__ 0x7fffffff\0"
$LASF136:
	.ascii "__FLT_DENORM_MIN__ 1.4012984643248171e-45F\0"
$LASF135:
	.ascii "__FLT_EPSILON__ 1.1920928955078125e-7F\0"
$LASF28:
	.ascii "__ORDER_PDP_ENDIAN__ 3412\0"
$LASF221:
	.ascii "init_platform\0"
$LASF35:
	.ascii "__WINT_TYPE__ unsigned int\0"
$LASF52:
	.ascii "__INT_LEAST64_TYPE__ long long int\0"
$LASF9:
	.ascii "__ATOMIC_RELAXED 0\0"
$LASF99:
	.ascii "__INT_LEAST32_MAX__ 0x7fffffffL\0"
$LASF168:
	.ascii "__DEC32_MANT_DIG__ 7\0"
$LASF121:
	.ascii "__GCC_IEC_559 0\0"
$LASF51:
	.ascii "__INT_LEAST32_TYPE__ long int\0"
$LASF227:
	.ascii "/ectf_dev/ectf/eCTF20/mb/drm_audio_fw/Debug\0"
$LASF16:
	.ascii "__SIZEOF_INT__ 4\0"
$LASF224:
	.ascii "enable_caches\0"
$LASF85:
	.ascii "__SIG_ATOMIC_MAX__ 0x7fffffff\0"
$LASF142:
	.ascii "__DBL_MIN_EXP__ (-1021)\0"
$LASF154:
	.ascii "__LDBL_MANT_DIG__ 53\0"
$LASF66:
	.ascii "__UINTPTR_TYPE__ unsigned int\0"
$LASF110:
	.ascii "__UINT64_C(c) c ## ULL\0"
$LASF138:
	.ascii "__FLT_HAS_INFINITY__ 1\0"
$LASF159:
	.ascii "__LDBL_MAX_10_EXP__ 308\0"
$LASF225:
	.ascii "GNU C11 6.2.0 -mlittle-endian -mxl-barrel-shift -mno-xl-soft-div -mcpu=v10.0 -mno-xl-soft-mul -g3 -O0 -fmessage-length=0 -ffunction-sections -fdata-sections\0"
$LASF17:
	.ascii "__SIZEOF_LONG__ 4\0"
$LASF117:
	.ascii "__UINT_FAST32_MAX__ 0xffffffffU\0"
$LASF2:
	.ascii "__STDC_UTF_16__ 1\0"
$LASF61:
	.ascii "__UINT_FAST8_TYPE__ unsigned int\0"
$LASF33:
	.ascii "__PTRDIFF_TYPE__ int\0"
$LASF165:
	.ascii "__LDBL_HAS_DENORM__ 1\0"
$LASF67:
	.ascii "__has_include(STR) __has_include__(STR)\0"
$LASF149:
	.ascii "__DBL_EPSILON__ ((double)2.2204460492503131e-16L)\0"
$LASF108:
	.ascii "__UINT32_C(c) c ## UL\0"
$LASF189:
	.ascii "__REGISTER_PREFIX__ \0"
$LASF14:
	.ascii "__ATOMIC_CONSUME 1\0"
$LASF188:
	.ascii "__DEC128_SUBNORMAL_MIN__ 0.000000000000000000000000000000001E-6143DL\0"
$LASF3:
	.ascii "__STDC_UTF_32__ 1\0"
$LASF46:
	.ascii "__UINT16_TYPE__ short unsigned int\0"
$LASF174:
	.ascii "__DEC32_SUBNORMAL_MIN__ 0.000001E-95DF\0"
$LASF69:
	.ascii "__GXX_ABI_VERSION 1010\0"
$LASF133:
	.ascii "__FLT_MAX__ 3.4028234663852886e+38F\0"
$LASF112:
	.ascii "__INT_FAST16_MAX__ 0x7fffffff\0"
$LASF86:
	.ascii "__SIG_ATOMIC_MIN__ (-__SIG_ATOMIC_MAX__ - 1)\0"
$LASF214:
	.ascii "HAVE_HW_MUL 1\0"
$LASF173:
	.ascii "__DEC32_EPSILON__ 1E-6DF\0"
$LASF59:
	.ascii "__INT_FAST32_TYPE__ int\0"
$LASF183:
	.ascii "__DEC128_MIN_EXP__ (-6142)\0"
$LASF62:
	.ascii "__UINT_FAST16_TYPE__ unsigned int\0"
$LASF201:
	.ascii "__GCC_ATOMIC_LONG_LOCK_FREE 2\0"
$LASF87:
	.ascii "__INT8_MAX__ 0x7f\0"
$LASF153:
	.ascii "__DBL_HAS_QUIET_NAN__ 1\0"
$LASF129:
	.ascii "__FLT_MIN_10_EXP__ (-37)\0"
$LASF203:
	.ascii "__GCC_ATOMIC_TEST_AND_SET_TRUEVAL 1\0"
$LASF13:
	.ascii "__ATOMIC_ACQ_REL 4\0"
$LASF34:
	.ascii "__WCHAR_TYPE__ int\0"
$LASF15:
	.ascii "__FINITE_MATH_ONLY__ 0\0"
$LASF73:
	.ascii "__LONG_MAX__ 0x7fffffffL\0"
$LASF190:
	.ascii "__USER_LABEL_PREFIX__ \0"
$LASF185:
	.ascii "__DEC128_MIN__ 1E-6143DL\0"
$LASF64:
	.ascii "__UINT_FAST64_TYPE__ long long unsigned int\0"
$LASF104:
	.ascii "__UINT8_C(c) c\0"
$LASF53:
	.ascii "__UINT_LEAST8_TYPE__ unsigned char\0"
$LASF89:
	.ascii "__INT32_MAX__ 0x7fffffffL\0"
$LASF95:
	.ascii "__INT_LEAST8_MAX__ 0x7f\0"
$LASF194:
	.ascii "__GCC_ATOMIC_BOOL_LOCK_FREE 1\0"
$LASF178:
	.ascii "__DEC64_MIN__ 1E-383DD\0"
$LASF143:
	.ascii "__DBL_MIN_10_EXP__ (-307)\0"
$LASF151:
	.ascii "__DBL_HAS_DENORM__ 1\0"
$LASF191:
	.ascii "__GNUC_STDC_INLINE__ 1\0"
$LASF212:
	.ascii "__LITTLE_ENDIAN__ 1\0"
