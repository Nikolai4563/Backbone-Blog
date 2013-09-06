define [
  "chaplin/views/view",
  "text!templates/create.hbs"
]
, (View, template)->

  class CreatePostView extends View
    template: template
    container: '#container'
    autoRender: true

    initialize: ->
      @delegate "click", ".submit-create_post", @sign_in_ajax

    sign_in_ajax: (event) ->
      $.ajax
        url: "/post"
        data:
          title: @$('.title').val()
          description: @$('.text').val()
        dataType: "json"
        type: "POST"
        success: (response)=>
         # @model.set response
          #@view = new NavigationView model:@model
          Backbone.history.navigate "/", { trigger: true }
          console.log 'true'
        error: (xhr, status) ->
          console.log '321'