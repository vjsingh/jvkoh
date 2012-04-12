class App.ApplicationController extends Tower.Controller
  @layout "application"

  @beforeAction "bootstrap"#, only: "welcome"

  constructor: (name) ->
    intermezzo =
        title: 'Intermezzo'
    allAroundTheWorld =
        title: 'All Around The World'
        alt: 'Theopilius London Remix for his contest'
        soundcloud: 'http://snd.sc/HylTLr'
    floatInTheOcean  =
        title: 'Float In The Ocean'
        img: '/images/floatintheocean.jpg'
    mozart  =
        title: 'Mozart'
        img: '/images/mozart.gif'
    heartbreaker  =
        title: 'HeartBreaker'
        img: '/images/heartbreaker.jpg'
    beatboxjam  =
        title: 'Beat Box Jam'
    venus  =
        title: 'Venus'
        img: '/images/venus.jpg'
    sometime  =
        title: 'Sometime'
        img: '/images/sometime.jpg'

    @homepageMusic = [
      intermezzo,
      allAroundTheWorld,
      floatInTheOcean,
      mozart,
      heartbreaker,
      beatboxjam,
      venus,
      sometime
    ]
    addImages(@homepageMusic)
    addSongInfo(@homepageMusic)

    venus  =
        title: 'Venus'
    sometime  =
        title: 'Sometime'
    @music2012 = [
      venus,
      sometime
    ]
    addSongInfo(@music2012)



  # Helper functions to add default locations of things
  # Remove spaces and make lowercase to get title used in files
  makeShortTitle = (title) ->
    shortTitle = title.replace(/\s/g, "")
    shortTitle = shortTitle.toLowerCase()
    return shortTitle

  addImages = (songs) ->
    for song in songs
      shortTitle = makeShortTitle(song.title)
      song.img = '/images/' + shortTitle + '.jpeg' if ! song.img

  addSongInfo = (songs) ->
    for song in songs
      shortTitle = makeShortTitle(song.title)
      song.url = '/music/' + shortTitle + '.mp3' if !song.url
      song.alt = song.title if !song.alt

  index: ->
    @render 'welcome', locals:
      homepageMusic: @homepageMusic

  music: ->
    @render 'music', locals:
      music2012: @music2012

  about: ->
    @render 'about'

  welcome1: ->
    @render "welcome", locals: {@bootstrapData}

  # Example of how you might bootstrap a one-page application.
  bootstrap: (callback) ->
    data = @bootstrapData = {}

    # for every model you add, you can add it to the bootstrap dataset by using this async helper.
    _.series [
      (next) => App.Post.all (error, posts) =>
        data.posts = posts
        next()
    ], callback
