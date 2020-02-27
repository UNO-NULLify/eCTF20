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
			{ text: 'Official Documentation', link: '/technical/' },
			{ text: 'Internal', link: '/internal/' }
		],
		logo: '/nullify_lock_no_padding.png',
		sidebar: [
			'/',
			{
				title: 'Official Documentation',
				path: '/mitre/',
				sidebarDepth: 2,
				collapsable: false,
				children: [
					'/mitre/overview',
					'/mitre/implementation',
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
