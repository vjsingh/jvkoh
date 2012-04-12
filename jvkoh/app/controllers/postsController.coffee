class App.PostsController extends App.ApplicationController
  @param "title"
  @param "body"
###
  index: ->
    App.Post.where(@criteria()).all (error, collection) =>
      @render "index"
    
  new: ->
    resource = new App.Post
    @render "new"
    
  create: ->
    App.Post.create @params.post, (error, resource) =>
      if error
        @redirectTo "new"
      else
        @redirectTo @urlFor(resource)
    
  show:  ->
    App.Post.find @params.id, (error, resource) =>
      if resource
        @render "show"
      else
        @redirectTo "index"
    
  edit: ->
    App.Post.find @params.id, (error, resource) =>
      if resource
        @render "edit"
      else
        @redirectTo "index"
      
  update: ->
    App.Post.find @params.id (error, resource) =>
      if error
        @redirectTo "edit"
      else
        resource.updateAttributes @params.post, (error) =>
          @redirectTo @urlFor(resource)
    
  destroy: ->
    App.Post.find @params.id, (error, resource) =>
      if error
        @redirectTo "index"
      else
        resource.destroy (error) =>
          @redirectTo "index"
    
###
