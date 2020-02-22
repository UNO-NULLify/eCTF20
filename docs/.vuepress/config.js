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
				children: [
				 //	'/user/usage',
				]
			},
			{
				title: 'Technical Reference',
				path: '/technical/',
				sidebarDepth: 2,
				collapsable: false,
				children: [
					'/technical/hardware',
					'/technical/software',
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
					'/internal/anti-re',
					'/internal/attack',
				]
			}
		]
	},
	repo: 'something/eCTF-2020',
	repoLabel: 'Github',
	docsDir: 'docs',
}
