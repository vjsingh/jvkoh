@title = "Post #{@post.toLabel()}"

dl class: "content", ->
  dt "Title:"
  dd @post.get("title")
  dt "Body:"
  dd @post.get("body")
