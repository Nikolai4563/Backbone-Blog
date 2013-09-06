define [
  "chaplin/views/view",
  "text!templates/post.hbs"
]
, (View, template)->

  class PostView extends View
    template: template
    autoRender: false
