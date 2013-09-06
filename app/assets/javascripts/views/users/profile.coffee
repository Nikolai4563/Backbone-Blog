define [
  "chaplin/views/view",
  "text!templates/profile.hbs"
]
, (View, template)->

  class UserProfileView extends View

    template: template
    container: '#container'
    autoRender: true
