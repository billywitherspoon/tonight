Rails.application.routes.draw do
  resources :venues
  resources :neighborhoods
  resources :events
  resources :check_ins
  resources :users
  resources :sessions
  
  # get '/login', to: 'sessions#new'
  # post '/login', to: 'sessions#create'
  # delete '/login', to: 'sessions#destroy', as: :logout
end
