class App extends Tower.Application
  @configure ->
    @use Tower.Middleware.Agent
    @use Tower.Middleware.Location
    @use Tower.Middleware.Router

  bootstrap: (data) ->
    @Post.load(data.posts) if data.posts

window.App = (new App).initialize()

$(document).ready(() ->
  $("#jquery_jplayer_1").jPlayer( {
    ready: () ->
      $(this).jPlayer("setMedia", {
        mp3: "/music/mozart.mp3"
      })
    supplied: 'mp3'
    wmode: 'window'
  })
)
