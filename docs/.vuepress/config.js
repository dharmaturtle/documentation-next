const containers = require("./lib/containers.js");
const versioning = require("./lib/versioning.js");

versioning.load();

module.exports = {
    base: "/",
    dest: "public",
    title: "EventStoreDB Documentation",
    description: "The stream database built for Event Sourcing",
    head: [
      ['link', { rel: "icon", type: "image/png", sizes: "32x32", href: "/favicon.png"}],
      ['link', { rel: "shortcut icon", href: "/favicon.ico"}],
    ],
    plugins: [
        "@vuepress/active-header-links",
        "one-click-copy",
        ["check-md", { pattern: "**/*.md" }],
        containers("code-group", "code-group"),
        containers("code", "code-block", title => `title="${title}"`),
        containers("tabs", "el-tabs", type => `${type ? ` type='${type}'` : ""}`),
        containers("tab", "el-tab-pane", label => `label="${label}"`),
        [
            "vuepress-plugin-container",
            {
                type: "detail",
                before: title => `<details class="custom-block details"><summary>${title}</summary>`,
                after: '</details>',
            },
        ],
        containers("card", "el-card", _ => `body-style="padding: 0px"`),
    ],
    themeConfig: {
        logo: "/eventstore-logo-alt.svg",
        gtm: "GTM-WLD9W3L",
        // repo: "EventStore/documentation-next",
        // editLinks: true,
        // editLinkText: "Help us improve this page!",
        codeLanguages: {
            csharp: "C#",
            go: "Go",
        },
        versions: {
            latest: versioning.versions.latest,
            selected: versioning.versions.latest,
            all: versioning.versions.all
        },
        sidebarDepth: 1,
        searchPlaceholder: "Search",
        searchMaxSuggestions: 20,
        // algolia: {
        //     appId: "WKVK6K0NXK",
        //     apiKey: "eed65d5bafcba4865b82a5a52b031b57",
        //     indexName: "Documentation"
        // },
        lastUpdated: "Last Updated",
        nav: [
            {
                text: "Getting started",
                link: "/latest.html"
            },
            {
                text: "Server",
                items: versioning.linksFor("server", "introduction/") // TODO create custom component
            },
            {
                text: "Clients & APIs",
                items: [
                    {text: "Overview", link: "/clients/"},
                    {text: ".NET SDK", items: versioning.linksFor("dotnet-client", "getting-started/")},
                    {text: "HTTP API", items: versioning.linksFor("http-api")},
                ]
            },
            {text: "Cloud", link: "/cloud/intro/"},
            {
                text: "Resources",
                items: [
                    {text: "Discuss", link: "https://discuss.eventstore.com"},
                    {text: "Articles", link: "https://eventstore.com/blog/articles/"},
                    {text: "Webinars", link: "https://eventstore.com/webinars/"},
                    {text: "Release notes", link: "https://eventstore.com/blog/release-notes/"},
                    {text: "Old Docs", link: "https://eventstore.com/docs/"}
                ]
            },
        ],
        sidebar: {
            ...versioning.sidebars,
            "/cloud/": [
                {
                    title: "Introduction",
                    path: "/cloud/intro/",
                    children: [
                        "/cloud/intro/",
                        "/cloud/intro/quick-start.md",
                        "/cloud/intro/preview.md",
                    ]
                },
                {
                    title: "Provisioning",
                    collapsable: true,
                    path: "/cloud/provision/",
                    children: [
                        "/cloud/provision/",
                        "/cloud/provision/aws/",
                        "/cloud/provision/gcp/",
                    ]
                },
                {
                    title: "Using cloud clusters",
                    collapsable: true,
                    path: "/cloud/use/",
                    children: [
                        "/cloud/use/",
                        "/cloud/use/tailscale.md"
                    ]
                }
            ]
        }
    },
    markdown: {
        extendMarkdown: md => {
            // md.use(require("./theme/markup/elementui"));
        }
    }
};
