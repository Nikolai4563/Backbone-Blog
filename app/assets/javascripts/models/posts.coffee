define [
  "chaplin/models/collection",
  'models/post'
]
, (Collection, Post) ->
  'use strict'
  class Posts extends Collection

    model: Post
    url: '/'
