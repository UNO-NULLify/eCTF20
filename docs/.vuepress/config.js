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
		displayAllHeaders: true,
		nav: [
			{ text: 'Home', link: '/' },
			{ text: 'Official Documentation', link: '/mitre/' },
			{ text: 'Technical Reference', link: '/technical-reference/' }
		],
		logo: '/nullify_lock_no_padding.png',
		sidebar: [
			'/',
			{
				title: 'Official Documentation',
				path: '/mitre/',
				sidebarDepth: 3,
				collapsable: true,
				children: [
					'/mitre/overview',
					'/mitre/implementation',
					'/mitre/attack',
					'/mitre/hardware',
				]
			},
			// {
			// 	title: 'Internal Documentation',
			// 	path: '/internal/',
			// 	sidebarDepth: 2,
			// 	collapsable: true,
			// 	children: [
			// 		'/internal/initial-plans',
			// 		'/internal/code-reviews',
			// 		'/internal/compiler-fixes',
			// 		'/internal/anti-re',
			// 		'/internal/attack',
			// 	]
			// },
			{
				title: 'Technical Reference',
				path: '/technical-reference/',
				sidebarDepth: 4,
				collapsable: true,
				children: [
				    '/technical-reference/compiler',
					'/technical-reference/authentication',
					'/technical-reference/querying',
					'/technical-reference/encryption',
					'/technical-reference/sharing',
					'/technical-reference/playing',
					'/technical-reference/metadata',
				]
			},
		]
	},
	repo: 'UNO-NULLify/eCTF-2020',
	repoLabel: 'Github',
	docsDir: 'docs',
}
