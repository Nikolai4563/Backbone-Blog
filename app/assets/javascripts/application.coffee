require [
  'chaplin/application',
  'routes',
  'views/layouts/layout',
  'views/layouts/navigation',
  'mediator',
  'chaplin/mediator',
  'chaplin/dispatcher',
  'chaplin/controllers/controller',
  'chaplin/composer',
  'chaplin/lib/composition',
  'chaplin/models/collection',
  'chaplin/models/model',
  'chaplin/views/layout',
  'chaplin/views/view',
  'chaplin/views/collection_view',
  'chaplin/lib/route',
  'chaplin/lib/router',
  'chaplin/lib/delayer',
  'chaplin/lib/event_broker',
  'chaplin/lib/helpers',
  'chaplin/lib/support',
  'chaplin/lib/sync_machine',
  'chaplin/lib/utils',
  'controllers/home_controller',
  'controllers/user_controller',
  'views/homes/index',
  'views/homes/create',
  'views/users/sign_in',
  'views/users/profile',
  "views/homes/post",
  "views/homes/show",
  'views/users/sign_up',
  'models/post',
  'models/posts',
  'models/user',
  'text'
], (Application, routes, Layout,NavigationView, mediator)->
  'use strict'

  class BackboneApplication extends Application

    initialize: ->
      super routes: routes
      @initLayout
    initLayout: ->
      # Use an application-specific Layout class. Currently this adds
      # no features to the standard Chaplin Layout, it’s an empty placeholder.
      @layout = new Layout
      @view = new NavigationView model: mediator.user

  new BackboneApplication()




