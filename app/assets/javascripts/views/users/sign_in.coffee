define [
  "chaplin/views/view",
  "text!templates/sign_in.hbs",
  'views/layouts/navigation'
]
, (View, template, NavigationView)->
  'use strict'
  class UserSignInView extends View
    template: template
    container: '#container'
    autoRender: true

    initialize: ->
      @delegate "click", ".submit-sign_in", @sign_in_ajax

    sign_in_ajax: (event) ->
      $.ajax
        url: "/users/sign_in"
        data:
          user:
            email: @$(".username").val()
            password: @$(".password").val()
        dataType: "json"
        type: "POST"
        success: (response)=>
          @model.set response
          @view = new NavigationView model:@model
          Backbone.history.navigate "/users/edit", { trigger: true }
        error: (xhr, status) ->
          console.log '321'