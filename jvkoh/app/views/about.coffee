div class: "container", ->
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
        p "My experience working in music thus far has been very well rounded.  Whether it's playing jazz guitar for a private party on new years eve, lending a hand around the studio at#{yield -> a href: 'http//www.wellspringsound.com/', 'Wellspring Sound'}, teaching guitar in the Greater Boston Area, or even playing bass for the rock band #{yield -> a href: 'http://www.myspace.com/whatsyourmoniker', 'Moniker'}, I always seem to have a good time."

        p "In addition to guitar lessons, this coming summer I will be offering my #{yield -> a href: "http://jvkoh.tumblr.com/post/2808658080/mini-studio", "mini-studio"} for use recording low-budget demos, primarily aimed at high school students looking to make a portfolio for their college applications.  If you are interested in working in my mini-studio please take a minute to visit my tumblr page as I use it exclusively to post my music, most of which are samples created in said studio."
        p "If you would like to collaborate with me musically please do not hesitate to send me an email, I'm always looking for more ways to make music."
        ul class: 'project-list', ->
