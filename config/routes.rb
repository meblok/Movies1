Rails.application.routes.draw do
  get 'documentaryfilms/index'
  get 'documentaryfilms/new'
  get 'series/index'
  get 'series/new'
  get 'movies/index'
  get 'movies/new'
  get 'movies/create'
  post "movies",    to:"movies#create"
  post "series",    to:"series#create"
  post "documentaryfilms",    to:"documentaryfilms#create"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root 'movies#new'
end
