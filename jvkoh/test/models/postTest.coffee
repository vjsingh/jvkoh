post = null

describe "App.Post", ->
  describe "fields", ->
    beforeEach (done) ->
      post = new App.Post
        title: "A title"
        body: "A body"
        
      done()  

    test "title", ->
      assert.ok post.get("title")

    test "body", ->
      assert.ok post.get("body")

  describe "relations", ->
  
