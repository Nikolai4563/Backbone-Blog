define [
  "chaplin/mediator",
  "models/user"
]
, (mediator, User)->

  mediator.user = new User(window.current_user)
  mediator