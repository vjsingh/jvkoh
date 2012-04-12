div class: "container", ->
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
            li -> a class: 'hovergallery', href: '/asdf/', ->
              img src: song.img, title: song.alt
              div class: 'songTitle', ->
                text song.title
            #audio controls: 'controls', ->
              #source src: song.url, type: 'audio/mp3'
