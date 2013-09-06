define [
  "chaplin/views/view",
  "text!templates/post.hbs"
]
, (View, template)->
  'use strict'
  class ShowPostView extends View
    template: template
    container: '#container'
    autoRender: true
    initialize: ->
      @model.on "sync", (->
        @render()
      ), this