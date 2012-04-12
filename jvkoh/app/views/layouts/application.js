
doctype(5);

html(function() {
  head(function() {
    return partial("shared/meta");
  });
  body({
    role: "application"
  }, function() {
    if (hasContentFor("templates")) yields("templates");
    /*
        nav id: "navigation", class: "navbar", role: "navigation", ->
          div class: "navbar-inner", ->
            div class: "container", ->
              partial "shared/navigation"
    */
    header({
      id: "header",
      "class": "header",
      role: "banner"
    }, function() {
      return div({
        "class": "container"
      }, function() {
        return partial("shared/header");
      });
    });
    section({
      id: "content",
      role: "main"
    }, function() {
      return div({
        "class": "container"
      }, function() {
        yields("body");
        return aside({
          id: "sidebar",
          role: "complementary"
        }, function() {
          if (hasContentFor("sidebar")) return yields("sidebar");
        });
      });
    });
    return footer({
      id: "footer",
      "class": "footer",
      role: "contentinfo"
    }, function() {
      return div({
        "class": "container"
      }, function() {
        return partial("shared/footer");
      });
    });
  });
  if (hasContentFor("popups")) {
    aside({
      id: "popups"
    }, function() {
      return yields("popups");
    });
  }
  if (hasContentFor("bottom")) {
    yields("bottom");
    if (this.bootstrapData) {
      return script("App.bootstrap(" + (JSON.stringify(this.bootstrapData, null, [])) + ")");
    }
  }
});
