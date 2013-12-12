(function() {
    "use strict";

    var MyApp = window.MyApp = { };

    // Uncomment the line below to disable platform-specific look and feel and to use the Generic theme for all devices
    // DevExpress.devices.current({ platform: "generic" });

    $(function() {
        MyApp.app = new DevExpress.framework.html.HtmlApplication({
            namespace: MyApp,

            navigationType: "navbar",
            navigation: [
              {
                title: "My Profile",
                action: "#profile",
                icon: "home"
              },
              {
                title: "Causes",
                action: "#causes",
                icon: "info"
              },
              {
                title: "Top Chimers",
                action: "#chimers",
                icon: "info"
              }
            ]
        });

        MyApp.app.router.register("share/:id/:cause", { view: "share", id: undefined, cause: undefined });
        MyApp.app.router.register("chimes/:id/:cause", { view: "chimes", id: undefined, cause: undefined });

        MyApp.app.router.register(":view", { view: "causes" });

        MyApp.app.navigate();
    });

})();