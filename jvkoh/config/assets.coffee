module.exports =
  javascripts:
    application: [
      "/app/client/config/application"
      "/config/routes"
      "/app/views/templates"
      "/app/models/post"
      "/app/client/controllers/postsController"
    ]

    lib: [
      "/lib/javascripts/jquery.jplayer.min"
    ]

    vendor: [
      "/vendor/javascripts/underscore"
      "/vendor/javascripts/underscore.string"
      "/vendor/javascripts/moment"
      "/vendor/javascripts/geolib"
      "/vendor/javascripts/validator"
      "/vendor/javascripts/accounting"
      "/vendor/javascripts/inflection"
      "/vendor/javascripts/coffeekup"
      "/vendor/javascripts/prettify"
      "/vendor/javascripts/socket.io"
      "/vendor/javascripts/history"
      "/vendor/javascripts/history.adapter.jquery"
      "/vendor/javascripts/tower"
      "/vendor/javascripts/bootstrap/bootstrap-transition"
      "/vendor/javascripts/bootstrap/bootstrap-alert"
      "/vendor/javascripts/bootstrap/bootstrap-modal"
      "/vendor/javascripts/bootstrap/bootstrap-dropdown"
      "/vendor/javascripts/bootstrap/bootstrap-scrollspy"
      "/vendor/javascripts/bootstrap/bootstrap-tab"
      "/vendor/javascripts/bootstrap/bootstrap-tooltip"
      "/vendor/javascripts/bootstrap/bootstrap-popover"
      "/vendor/javascripts/bootstrap/bootstrap-button"
      "/vendor/javascripts/bootstrap/bootstrap-collapse"
      "/vendor/javascripts/bootstrap/bootstrap-carousel"
      "/vendor/javascripts/bootstrap/bootstrap-typeahead"
    ]

    development: [
      "/vendor/javascripts/mocha"
      "/vendor/javascripts/chai"
      "/vendor/javascripts/design.io"
      "/test/client"
      "/test/models/postTest"
    ]

  stylesheets:
    application: [
      "/app/client/stylesheets/application"
      #"/app/client/stylesheets/jplayer.blue.monday"
    ]

    lib: [
      #'/lib/stylesheets/blue.monday/jplayer.blue.monday'
    ]

    vendor: [
      "/vendor/stylesheets/bootstrap/bootstrap"
      "/vendor/stylesheets/prettify"
    ]

    development: [
      # "/vendor/stylesheets/mocha"
    ]
