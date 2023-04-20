Rails.application.routes.draw do
  get 'movies' => 'movie#index', as:'movies'
  post 'movies' => 'movie#create'
  get 'movies/new' => 'movie#new', as: 'new_movie'
  get "movies/:id" => 'movie#show', as:'movie'
  get 'movies/:id/edit' => 'movie#edit', as: 'edit_movie'
  patch 'movies/:id' => 'movie#update'
  delete 'movies/:id' => 'movie#destroy', as: 'delete_movie'

  root 'movie#index' 
end
