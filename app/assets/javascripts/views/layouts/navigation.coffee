define [
  "chaplin/views/view",
  "text!templates/navigation.hbs"
]
, (View, template)->

  class NavigationView extends View

    template: template
    container: '#navigation'
    autoRender: true
