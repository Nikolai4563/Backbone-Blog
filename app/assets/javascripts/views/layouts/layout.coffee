define [
  "chaplin/views/layout",
  "text!templates/layout.hbs"
]
, (Layout, template)->
  'use strict'
  class LayoutView extends Layout
    template: template
    container: '#main'
    autoRender: true
