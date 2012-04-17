doctype 5
html ->
  head ->
    partial "shared/meta"
    #stylesheets 'lib', 'vendor', 'application'

  body role: "application", ->
    img class: 'arrowKey', id: 'rightArrow', src:'/images/right.png'
    img id: 'leftArrow', class: 'arrowKey', src:'/images/left.png'
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
            li -> a id: 'home', class: 'navButton', href: '#home', ->
              text 'Home'
              span "Music Highlights"
            li -> a id: 'music', class: 'navButton', href: '#music', ->
              text 'Music'
              span "Everything"
            li -> a id: 'about', class: 'navButton', href: '#about', ->
              text 'About'
              span "My Background"


    div id: 'jplayerBar', ->
      div class: 'container', ->
        div id: 'jquery_jplayer_1', class: 'jp-jplayer'
        text '''
          <div id="jp_container_1" class="jp-audio">
            <div class="jp-type-single">
              <div class="jp-gui jp-interface">
                <ul class="jp-controls">
                  <li><a href="javascript:;" class="jp-play" tabindex="1">play</a></li>
                  <li><a href="javascript:;" class="jp-pause" tabindex="1">pause</a></li>
                  <li><a href="javascript:;" class="jp-stop" tabindex="1">stop</a></li>
                  <li><a href="javascript:;" class="jp-mute" tabindex="1" title="mute">mute</a></li>
                  <li><a href="javascript:;" class="jp-unmute" tabindex="1" title="unmute">unmute</a></li>
                  <li><a href="javascript:;" class="jp-volume-max" tabindex="1" title="max volume">max volume</a></li>
                </ul>
                <div class="jp-progress">
                  <div class="jp-seek-bar">
                    <div class="jp-play-bar"></div>
                  </div
                </div>
                <div class="jp-volume-bar">
                  <div class="jp-volume-bar-value"></div>
                </div>
                <div class="jp-time-holder">
                  <div class="jp-current-time"></div>
                  <div class="jp-duration"></div>

                  <ul class="jp-toggles">
                    <li><a href="javascript:;" class="jp-repeat" tabindex="1" title="repeat">repeat</a></li>
                    <li><a href="javascript:;" class="jp-repeat-off" tabindex="1" title="repeat off">repeat off</a></li>
                  </ul>
                </div>
              </div>
              <div class="jp-title">
                <ul>
                  <li id="jp-title-text">Cro Magnon Man</li>
                </ul>
              </div>
              <div id="jp-no-solution-wrapper">
                <div class="jp-no-solution">
                  <span>Update Required</span>
                  To play the media you will need to either update your browser to a recent version or update your <a href="http://get.adobe.com/flashplayer/" target="_blank">Flash plugin</a>.
                </div>
              </div>
            </div>
          </div>
      '''
    div id: "soundCloudLink"
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
