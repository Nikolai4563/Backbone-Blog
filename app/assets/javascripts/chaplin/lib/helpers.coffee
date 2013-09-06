define [
  'chaplin/mediator'
], (mediator) ->
  'use strict'

  helpers =
    # Routing Helpers
    # ---------------

    # Returns the url for a named route and any params.
    reverse: (routeName, params) ->
      mediator.execute 'router:reverse', routeName, params

    # Redirects to URL or route name.
    redirectTo: (pathDesc, options) ->
      mediator.execute 'router:route', pathDesc, options

  helpers
