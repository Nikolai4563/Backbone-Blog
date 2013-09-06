define [

]
, ()->
  'use strict'
  (match)->
    match '', "home#index"
    match 'post', "home#posted"
    match 'post/:id', 'home#show'
    match "users/sign_in", "user#sign_in"
    match "users/sign_up", "user#sign_up"
    match "users/edit", "user#profile", name: 'auth_registration'