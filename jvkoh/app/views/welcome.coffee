div id: 'bodyWrapper', ->
  div id: 'homePage', class: "page container", ->
    div id: 'main', ->
      div class: 'row', ->
        aside class: 'sidebar span3', ->
          h2 "Yo"
          p "My name's Jonny Koh and I make bombastic music"
          p "Check it out!"
        section class: 'span9', ->
          h2 ->
            text "Music"
            small "A selection of past works"
          ul class: 'project-list', ->
            for song in @homepageMusic
              li -> a class: 'playableSong hovergallery', href: '', url: song.url, title: song.title, soundCloudUrl: song.soundCloudUrl, ->
                img src: song.img, title: song.alt
                div class: 'songTitle', ->
                  text song.title
              #audio controls: 'controls', ->
                #source src: song.url, type: 'audio/mp3'
  div id: 'musicPage', class: "page container", ->
    div id: 'main', ->
      div class: 'row', ->
        section class: 'span4', ->
          h2 ->
            text "2012"
            small "Fresh off the grill"
          ul class: 'music-list', ->
            for song in @music2012
              li -> a class: 'playableSong', href: '', url: song.url, title: song.title, soundCloudUrl: song.soundCloudUrl, ->
                div class: 'songTitle', ->
                  text song.title
        section class: 'span4', ->
          h2 ->
            text "2011"
            small "Tracks of Yesteryear"
        section class: 'span4', ->
          h2 ->
            text "2010 & Earlier"
            small "Ye Olde Tracks"
  div id: 'aboutPage', class: "page container", ->
    div id: 'main', ->
      div class: 'page-header', ->
        h1 ->
          text "About"
          small "My Background"
      div class: 'row', ->
        aside class: 'sidebar span4', ->
          figure ->
            img src: '/images/profile.jpeg', alt:'Me', width: '200px', ->
        section class: 'span8', ->
          h2 'Recording Engineer and Musician'
          p 'Currently pursuing a Computer Music and Computer Science double major at Brown University, I spend my time away from classes primarily on my music.  While I am by no means striving to be a solo artist, I love playing music and understand the importance of being able to hold a groove in any sort of ensemble.'
          p "I am primarily a guitarist, but also a very competent bassist and drummer having played each for 10, 8, and 6 years respectively.  While I don't get to consistently practice drums at school I find that as all the more incentive to practice at home.  At school that time void can be easily filled with work on electronic music composition."
          p ->
            text "My experience working in music thus far has been very well rounded.  Whether it's playing jazz guitar for a private party on new years eve, lending a hand around the studio at ", ->
            a href: 'http://www.wellspringsound.com/', target: '_blank', 'Wellspring Sound'
            text ", teaching guitar in the Greater Boston Area, or even playing bass for the rock band "
            a href: 'http://www.myspace.com/whatsyourmoniker', target: '_blank', 'Moniker',
            text ", I always seem to have a good time."

          p ->
            text "In addition to guitar lessons, this coming summer I will be offering my "
            a href: 'http://jvkoh.tumblr.com/post/2808658080/mini-studio', target: '_blank', 'mini-studio'
            text "for use recording low-budget demos, primarily aimed at high school students looking to make a portfolio for their college applications.  If you are interested in working in my mini-studio please take a minute to visit my tumblr page as I use it exclusively to post my music, most of which are samples created in said studio."
          p "If you would like to collaborate with me musically please do not hesitate to send me an email, I'm always looking for more ways to make music."
