module.exports = {
	title: 'eCTF Documentation',
	description: 'NULLify',
	plugins: ['vuepress-plugin-export'],
	themeConfig: {
		searchPlaceholder: 'Search...',
		lastUpdated: 'Last Updated',
		nav: [
			{ text: 'Home', link: '/' },
			{ text: 'User Guide', link: '/user/' },
			{ text: 'Technical Reference', link: '/technical/' },
			{ text: 'Internal', link: '/internal/' }
		],
		logo: '/nullify_lock.png',
		sidebar: [
			'/',
			{
				title: 'User Guide',
				path: '/user/',
				sidebarDepth: 2,
				collapsable: false,
				// children: [
				// 	'/user/load-song',
				// 	'/user/play-song',
				// ]
			},
			{
				title: 'Technical Reference',
				path: '/technical/',
				sidebarDepth: 2,
				collapsable: false,
				children: [
					'/technical/hardware',
					'/technical/software',
					'/technical/attack',
				]
			},
			{
			    title: 'Internal Documentation',
				path: '/internal/',
				sidebarDepth: 2,
				collapsable: false,
				children: [
					'/internal/zune-devs',
					'/internal/multiple-priority',
					'/internal/birdwatching'
				]
			}
		]
	},
	repo: 'something/eCTF-2020',
	repoLabel: 'Github',
	docsDir: 'docs',
}
