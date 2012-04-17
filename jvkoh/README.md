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
basically everything you need is in the constructor at the top. It should be pretty self explanatory. empty soundcloudUrl means theres no soundcloud page.
soundcloud urls and music files default to the title made all lowercase with all the spaces removed. music files are stored on amazon s3

app/client/config/application.coffee
This is where the javascript for your page is

app/views/welcome.coffee / app/views/about.coffee / app/views/music.coffee
the home, about, and music pages

app/views/layouts/application.coffee
the layout (top and bottom thats on every page)

app/client/stylesheets/application.styl
  all the css

./deploy deploys it live
