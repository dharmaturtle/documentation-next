import ElementUI from "element-ui";
import "element-ui/lib/theme-chalk/index.css";
import "./theme/styles/element-variables.scss"
import "prismjs";
import "prismjs/plugins/autolinker/prism-autolinker.min";
import "prismjs/plugins/autolinker/prism-autolinker.css";
import Prism from "vue-prism-component";
import "prismjs/components/prism-csharp";
import "prismjs/components/prism-yaml";
import "prismjs/components/prism-bash";
import * as gtm from "./gtm/inject";
import Vuex from "vuex";
import connection from "./store/client/connection";

// import CodeToggle from "./components/CodeToggle";
// import {SetSiteLanguages} from "./store/mutations";

export default ({Vue, options, router, siteData}) => {
    Vue.use(Vuex);
    Vue.use(ElementUI);
    // Vue.component("code-toggle", CodeToggle);
    Vue.component("prism", Prism);

    // store.commit(SetSiteLanguages, siteData.themeConfig.codeLanguages);
    Object.assign(options, {
        //data: {
        //    codeLanguage: null,
        //},
        connection: connection
    });
    router.addRoutes([
        {
            path: "/latest.html",
            redirect: "/server/20.6/server/introduction/"
            //`/${siteData.themeConfig.versions.latest}/introduction/`
        },
    ]);

    gtm.addGtm(router, Vue, siteData.themeConfig.gtm);

    // Select docs version based on url path
    // Example: "/2.6/guides/installation.html" will use "2.6"
    router.afterEach((to, from) => {
        const version = to.path.split('/')[1]

        if (siteData.themeConfig.versions.all.includes(version)) {
            siteData.themeConfig.versions.selected = version
        }
    })
}
