define [
  "chaplin/controllers/controller",
  "views/users/sign_in",
  "views/users/sign_up",
  "views/users/profile",
  "mediator"
]
, (Controller, UserSignInView, UserSignUpView, UserProfileView, mediator)->
  'use strict'
  class UserController extends Controller

    sign_in: ->
      @view = new UserSignInView model: mediator.user
    sign_up: ->
      @view = new UserSignUpView model: mediator.user
    profile: ->
      @view = new UserProfileView model: mediator.user

