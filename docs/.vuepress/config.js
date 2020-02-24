module.exports = {
	title: 'eCTF Documentation',
	description: 'NULLify',
	plugins: [
		'vuepress-plugin-export',
		'@vuepress/nprogress',
		'@vuepress/back-to-top',
		'@vuepress/medium-zoom',
		'@vuepress/active-header-links', {
			sidebarLinkSelector: '.sidebar-link',
			headerAnchorSelector: '.header-anchor'
		}
	],
	themeConfig: {
		searchPlaceholder: 'Search...',
		lastUpdated: 'Last Updated',
		nav: [
			{ text: 'Home', link: '/' },
			{ text: 'User Guide', link: '/user/' },
			{ text: 'Technical Reference', link: '/technical/' },
			{ text: 'Internal', link: '/internal/' }
		],
		logo: '/nullify_lock_no_padding.png',
		sidebar: [
			'/',
			{
				title: 'User Guide',
				path: '/user/',
				sidebarDepth: 2,
				collapsable: false,
				children: [
					'/user/load-song',
					'/user/play-song',
				]
			},
			{
				title: 'Technical Reference',
				path: '/technical/',
				sidebarDepth: 2,
				collapsable: false,
				children: [
					'/technical/overview',
					'/technical/implementation',
				]
			},
			{
				title: 'Internal Documentation',
				path: '/internal/',
				sidebarDepth: 2,
				collapsable: false,
				children: [
					'/internal/initial-plans',
					'/internal/code-reviews',
					'/internal/compiler-fixes',
					'/internal/anti-re',
					'/internal/attack',
				]
			}
		]
	},
	repo: 'UNO-NULLify/eCTF-2020',
	repoLabel: 'Github',
	docsDir: 'docs',
}