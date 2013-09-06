Backbone2::Application.routes.draw do
  root :to => 'home#index'
  get '/post' => 'home#new'
  post '/post' => 'home#create'
  get '/posts' => 'posts#index'
  get '/post/:id', to: 'home#show'
  devise_for :users, :controllers => {:registrations => "registrations",:sessions => "sessions"}

end
