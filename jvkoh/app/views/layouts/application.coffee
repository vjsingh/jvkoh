doctype 5
html ->
  head ->
    partial "shared/meta"
    #stylesheets 'lib', 'vendor', 'application'

  body role: "application", ->
    #if browserIs "ie"
    #  javascriptTag "http://html5shiv.googlecode.com/svn/trunk/html5.js"

    if hasContentFor "templates"
      yields "templates"

    ###
    nav id: "navigation", class: "navbar", role: "navigation", ->
      div class: "navbar-inner", ->
        div class: "container", ->
          partial "shared/navigation"
    ###

    header id: "header", class: "header", role: "banner", ->
      div class: "container", ->
        h1 ->
          text "Jonathan"
          em "Koh"
        nav ->
          ul ->
            li -> a href: '/', ->
              text 'Home'
              span "Music Highlights"
            li -> a href: '/allMusic', ->
              text 'Music'
              span "Everything"
            li -> a href: '/about', ->
              text 'About'
              span "My Background"


    section id: "content", role: "main", ->
      div class: "container", ->
        yields "body"
        aside id: "sidebar", role: "complementary", ->
          if hasContentFor "sidebar"
            yields "sidebar"

        footer id: "footer", class: "footer", role: "contentinfo", ->
          partial "shared/footer"

  if hasContentFor "popups"
    aside id: "popups", ->
      yields "popups"

  if hasContentFor "bottom"
    yields "bottom"

    script "App.bootstrap(#{JSON.stringify(@bootstrapData, null, [])})" if @bootstrapData
