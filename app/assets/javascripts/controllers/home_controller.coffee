define [
  "chaplin/controllers/controller",
  "views/homes/index",
  "views/homes/create",
  "views/homes/show",
  "models/posts",
  "models/post"
]
, (Controller, UserHomesView, CreatePostView, ShowPostView, Posts, Post)->
  'use strict'
  class HomeController extends Controller


    index: ->
      @posts = new Posts()
      @view = new UserHomesView collection: @posts
      @posts.fetch()

    show: (params) ->
      @post = new Post({id: params.id})
      @post.fetch()
      @view = new ShowPostView model: @post

    posted: ->
      @view = new CreatePostView()
