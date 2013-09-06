define [
  "chaplin/views/collection_view",
  "text!templates/index.hbs",
  "views/homes/post"
]
, (CollectionView, template, PostView)->

  class UserHomesView extends CollectionView
    template: template
    container: '#container'
    autoRender: true
    itemView: PostView

    initialize: ->
      super
