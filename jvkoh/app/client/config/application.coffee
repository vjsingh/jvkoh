class App extends Tower.Application
  @configure ->
    @use Tower.Middleware.Agent
    @use Tower.Middleware.Location
    @use Tower.Middleware.Router

  bootstrap: (data) ->
    @Post.load(data.posts) if data.posts

window.App = (new App).initialize()

$(document).ready(() ->
  $('#jp-no-solution-wrapper').hide()
  console.log("AAA")
  setTitle = (title) ->
    $('#jp-title-text').html(title)
  setSoundCloudLink = (url) ->
    if !url
      $('#soundCloudLink').hide()
    else
      $('#soundCloudLink').show()
      $('#soundCloudLink').html( '<a href="' + url + '"  target="_blank" id="asdf"> <img src="/images/soundcloud.png"> </a>')
  jPlayerDiv = $("#jquery_jplayer_1")
  jPlayerDiv.jPlayer( {
    ready: () ->
    supplied: 'mp3'
    wmode: 'window'
  })

  playSong = (songUrl, songTitle, soundCloudUrl, dontStartPlaying) ->
    if dontStartPlaying #false  if not passed in
      jPlayerDiv.jPlayer("setMedia", {
        mp3: songUrl
      }).jPlayer()
    else
      jPlayerDiv.jPlayer("setMedia", {
        mp3: songUrl
      }).jPlayer('play')
    setTitle(songTitle)
    setSoundCloudLink(soundCloudUrl)

  $('.playableSong').click((e) ->
    songDiv = $(this)
    songUrl = songDiv.attr('url')
    songTitle = songDiv.attr('title')
    soundCloudUrl = songDiv.attr('soundCloudUrl')
    playSong(songUrl, songTitle, soundCloudUrl)
  )
  playSong('https://s3.amazonaws.com/jvkoh-music/floatintheocean.mp3', 'Float in the Ocean', '', true)

  togglesOffset = $('.jp-repeat').offset()
  $('#soundCloudLink').css({
    position: 'absolute'
    left: togglesOffset.left + 25
    top: togglesOffset.top + 10
  }).show()

  # Parallax
  p = parallax
  #All the pages in order
  pages = ['home', 'music', 'about']
  pages.forEach((e) ->
    p.add(e, $('#' + e + 'Page'))
  )
  getCurrentPageIndex = () ->
    return pages.indexOf(p.current.key)

  p.home.show()
  # Before using .last either check to see if it's null

  # or set it before hand
  p.last = p.homepage

  numPages = pages.length
  hideArrowKeys = () ->
    $('.arrowKey').show()
    console.log(getCurrentPageIndex())
    if getCurrentPageIndex() == 0
      $('#leftArrow').hide()
    else if getCurrentPageIndex() == (numPages - 1)
      $('#rightArrow').hide()
  hideArrowKeys()
  goRight = () ->
    # if not at the far right
    if getCurrentPageIndex() < (numPages - 1)
      nextPage = pages[getCurrentPageIndex() + 1]
      #p[nextPage].right()
      console.log(nextPage)
      $('#' + nextPage).click()
  goLeft = () ->
    # if not at the far left
    if getCurrentPageIndex() > 0
      nextPage = pages[getCurrentPageIndex() - 1]
      $('#' + nextPage).click()

  # Arrow key navigation
  # 37 - left, 38 - top, 39 - right, 40 - bottom
  $(document).keydown((e) ->
    if (e.keyCode == 39)  #right
      goRight()
    else if (e.keyCode == 37)  #left
      goLeft()
  )
  # Make tabs active when clicked
  navbarLinks = $(".navButton")
  inTransition = false
  transitionFinished = () ->
    hideArrowKeys()
    inTransition = false
    $('body').removeClass('hideOverflow')

  selectOnClick = (navLink) ->
    navLink.click((e) ->
      if (!inTransition)
        inTransition = true

        # There's some weird flickering going on b/c
        # of parallax, this fixes that
        $('body').addClass('hideOverflow')
        # deselect all others
        navLink.parent().parent().children().removeClass('active')
        # Select this one
        navLink.parent().toggleClass('active')
        # Scroll to the right page
        navTitle = navLink.attr('href').substring(1)
        if (pages.indexOf(navTitle) < getCurrentPageIndex())
          p[navTitle].left(transitionFinished)
        else if (pages.indexOf(navTitle) > getCurrentPageIndex())
          p[navTitle].right(transitionFinished)
        else
          transitionFinished()
        # if same do nothing, already on page
    )

  #for (i = 0, l = navbarLinks.length; i < l; i++) {
  for i in [0 .. navbarLinks.length - 1]
    navbarLink = $(navbarLinks[i])
    navbarLink.attr('id', navbarLink.attr('href').substring(1))
    selectOnClick($(navbarLink))

  # RESIZING STUFF FOR THE FOOTER
  # content is positioned absolutely, which messes with layout
  # Have to set height of contents parent div
  # dynamically to ensure footer is at bottom
  resizePage = () ->
    $('#bodyWrapper').height($($(p.current.page).children()[0]).outerHeight(true))

  $(window).resize(() ->
    resizePage()
  )
  resizePage()
  p.preload = (thisPage) ->
    setTimeout(
      () ->
        $('#bodyWrapper').height($($(thisPage.page).children()[0]).outerHeight(true))
      100
    )

  # Hide no solution warning because it flickers at first
  setTimeout(
    () ->
      $('#jp-no-solution-wrapper').show()
    5000
  )
)
