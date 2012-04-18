# Jvkoh

## Install

First [setup the Tower.js development environment](http://towerjs.org/guides/development#environment), then run:

```
git clone git@github.com:vjsingh/jvkoh.git
cd jvkoh
npm install
node server

yooooooo heres what you need
to test stuff locally if youre making changes, in jvkoh: 'node server.js'
then open localhost:3000 in a browser

app/controllers/applicationController.coffee
basically everything you need is in the constructor at the top. It should be pretty self explanatory. soundcloudUrl = '' means theres no soundcloud page with that song
soundcloud urls and music files default to the title made all lowercase with all the spaces removed, but you can override that by setting it. music files are stored on amazon s3, ill transfer them over to you

app/client/config/application.coffee
client-side javascript

app/views/welcome.coffee
All the pages are in here

app/views/layouts/application.coffee
the layout (top and bottom thats on every page)

app/client/stylesheets/application.styl
  all the css

./deployLive sends it to the server
