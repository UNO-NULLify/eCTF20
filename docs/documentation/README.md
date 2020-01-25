# Documentation
For our documentation, we chose to use [VuePress](https://vuepress.vuejs.org/), a minimalistic Vue-powered static site generator that works great for documentation. 

## Starting VuePress
Before running any of the documentation services, make sure you have [Yarn](https://yarnpkg.com/lang/en/) and [npm](https://www.npmjs.com/) installed on your machine.
Additionally, ensure you have all the required dependencies by running:
```bash
npm install
```
in the root of the project.

### Development
To start the VuePress server for development, change directories into the project root and execute:
```bash
yarn docs:dev # OR npm run docs:dev
```

Once the VuePress dev server is running, visit [localhost:8080](https://localhost:8080) in your favorite browser and enjoy our beautiful documentation.

### Production
To build the documentation for production, execute:
```bash
yarn docs:build # OR npm run docs:build
```

By default, the built files will be in .vuepress/dist. The built files can then be deployed to any static file server.
To learn more about how to deploy VuePress visit their [Deployment Guide](https://v1.vuepress.vuejs.org/guide/deploy.html#github-pages)

## Markdown
To get a good understanding of the markdown components offered by VuePress, see their [Markdown Documentation](https://v1.vuepress.vuejs.org/guide/markdown.html#header-anchors).
