div class: "container", ->
  div id: 'main', ->
    div class: 'row', ->
      section class: 'span4', ->
        h2 ->
          text "2012"
          small "Fresh off the grill"
        ul class: 'music-list', ->
          for song in @music2012
            li -> a href: '#', ->
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
