module.exports = {
	title: 'eCTF Documentation',
	description: 'NULLify',
	themeConfig: {
		nav: [
			{ text: 'Home', link: '/' },
			{ text: 'Getting Started', link: '/getting-started/' },
			{ text: 'Documentation', link: '/documentation/' },
			{ text: 'NULLify Website', link: 'https://nullify.uno' }
		],
		logo: '/nullify_lock.png',
		sidebar: [
			{
				title: 'Home',
				path: '/', 
				collapsable: false,
				sidebarDepth: 1,
			},
			{
				title: 'Getting Started',
				path: '/getting-started/',
				collapsable: true,
				sidebarDepth: 3,
			},
			{
				title: 'Hardware',
				path: '/hardware/',
				collapsable: true,
				sidebarDepth: 3,
			},
			{
				title: 'Software',
				path: '/software/',
				collapsable: true,
				sidebarDepth: 3,
			},
			{
				title: 'Attack',
				path: '/attack/',
				collapsable: true,
				sidebarDepth: 3,
			}
		],
		sidebarDepth: 3,
		displayAllHeaders: true,
		smoothScroll: true,
	},

	repo: 'something/eCTF-2020',
	repoLabel: 'Github',
	docsDir: 'docs',
}