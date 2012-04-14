class App extends Tower.Application
  @configure ->
    @use Tower.Middleware.Agent
    @use Tower.Middleware.Location
    @use Tower.Middleware.Router

  bootstrap: (data) ->
    @Post.load(data.posts) if data.posts

window.App = (new App).initialize()

$(document).ready(() ->
  setTitle = (title) ->
    $('#jp-title-text').html(title)
  jPlayerDiv = $("#jquery_jplayer_1")
  jPlayerDiv.jPlayer( {
    ready: () ->
      $(this).jPlayer("setMedia", {
        mp3: "/music/mozart.mp3"
      })
      setTitle('Mozart')
    supplied: 'mp3'
    wmode: 'window'
  })

  $('.playableSong').click((e) ->
    songUrl = $(this).attr('url')
    songTitle = $(this).attr('title')
    jPlayerDiv.jPlayer("setMedia", {
      mp3: songUrl
    }).jPlayer('play')
    setTitle(songTitle)
  )
)
