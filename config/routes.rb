Rails.application.routes.draw do
  resources :venues
  resources :neighborhoods
  resources :events
  resources :check_ins
  resources :users
  resources :sessions

<<<<<<< HEAD
  # Routes go in here
  # resources :users, only: [:show, :new, :index, :create]
  # root 'users#index'
=======
>>>>>>> 71c611846d655527e0900fc3789928d9c485f9a1
  # get '/login', to: 'sessions#new'
  # post '/login', to: 'sessions#create'
  # delete '/login', to: 'sessions#destroy', as: :logout
end
