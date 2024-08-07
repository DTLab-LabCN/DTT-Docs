// @ts-check
// `@type` JSDoc annotations allow editor autocompletion and type checking
// (when paired with `@ts-check`).
// There are various equivalent ways to declare your Docusaurus config.
// See: https://docusaurus.io/docs/api/docusaurus-config

import {themes as prismThemes} from 'prism-react-renderer';

// Configuration also set according to:
// https://docusaurus.io/docs/deployment#deploying-to-github-pages
/** @type {import('@docusaurus/types').Config} */
const config = {
  title: 'DTT Documentation',
  tagline: 'Digital Trust Testing at your fingertips.',
  favicon: 'img/DTLab-Logo-RGB-V.svg',

  // Set the production url of your site here
  // url: 'https://dtt.docs.dtlab-labcn.app',
  // Use environnment variable to keep code identical in the case of
  // different source repositories
  url: process.env.DTT_DOCS_URL,
  // Set the /<baseUrl>/ pathname under which your site is served
  // For GitHub pages deployment, it is often '/<projectName>/'
  baseUrl: process.env.DTT_DOCS_BASE_PATH,

  // GitHub pages deployment config.
  // If you aren't using GitHub pages, you don't need these.
  // This should be set by the environment variable ORGANIZATION_NAME
  // organizationName: 'DTLab-LabCN',
  // For our way of working, either 'DTT-Docs' or 'DTT-Docs-staging'
  // This should be set by the environment variable PROJECT_NAME
  // projectName:  // Usually your repo name.
  // This should be configured as the default deployment branch in both
  // DTT-Docs and DTT-Docs-staging repository
  // Warning: could be overriden by the DEPLOYMENT_BRANCH environment variable
  deploymentBranch : 'gh-pages',

  // According to
  // https://github.com/slorber/trailing-slash-guide/blob/main/docs/Hosting-Providers.md#github-pages
  trailingSlash: false,


  onBrokenLinks: 'throw',
  onBrokenMarkdownLinks: 'warn',


  // Even if you don't use internationalization, you can use this field to set
  // useful metadata like html lang. For example, if your site is Chinese, you
  // may want to replace "en" with "zh-Hans".
  i18n: {
    defaultLocale: 'en',
    locales: ['en'],
  },

  presets: [
    [
      'classic',
      /** @type {import('@docusaurus/preset-classic').Options} */
      ({
        docs: {
          sidebarPath: './sidebars.js',
          routeBasePath: '/', // Serve the docs at the site's root
        },
        theme: {
          customCss: './custom.css',
        },
      }),
    ],
  ],

  themeConfig:
    /** @type {import('@docusaurus/preset-classic').ThemeConfig} */
    ({
      // Replace with your project's social card
      // image: 'img/docusaurus-social-card.jpg',
      navbar: {
        title: 'DTT-Docs',
        logo: {
          alt: 'DTLab Logo',
          src: 'img/DTLab-Logo-RGB-V.svg',
        },
        items: [
          {
            href: 'https://dtlab-labcn.org',
            label: 'DTLab-LabCN',
            position: 'right',
          },
        ],
      },
      footer: {
        style: 'light',
        copyright: `Copyright © ${new Date().getFullYear()} DTLAb, Built with Docusaurus.`,
      },
      prism: {
        theme: prismThemes.github,
        darkTheme: prismThemes.dracula,
      },
    }),
};

export default config;
