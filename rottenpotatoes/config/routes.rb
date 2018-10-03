Rottenpotatoes::Application.routes.draw do
  resources :movies
  # map '/' to be a redirect to '/movies'
  #root :to => redirect('/movies')
  root 'movies#index'
  get 'movies/same_director/:title', to: 'movies#same_director', as: 'same_director'
end
