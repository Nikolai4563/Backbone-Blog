define [
  "chaplin/views/view",
  "text!templates/sign_up.hbs"
  'views/layouts/navigation'
]
, (View, template, NavigationView)->
  'use strict'
  class UserSignUpView extends View

    template: template
    container: '#container'
    autoRender: true
    initialize: ->
      @delegate "click", ".submit-sign_up", @registration_ajax

    registration_ajax: (event) ->
      user_name = @$('.user_name').val()
      user_about = @$('.user_about').val()
      user_email = @$('.user_email').val()
      user_password = @$('.user_password').val()
      user_password_confirmation = @$('.user_password_confirmation').val()
      $.ajax
        url: "/users"
        data:
          user:
            name: user_name
            about: user_about
            email: user_email
            password: user_password
            password_confirmation: user_password_confirmation
        dataType: "json"
        type: "POST"
        success: (response) =>
          @model.set response
          @view = new NavigationView model:@model
          Backbone.history.navigate "/users/edit", { trigger: true }
        error: (xhr, status) ->
          console.log '321'


