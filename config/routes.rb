Rails.application.routes.draw do
  resources :venues, only: [:index, :show]
  resources :neighborhoods, only: [:index, :show]
  resources :events, only: [:index, :show]
  resources :check_ins, only: [:index, :show, :new]
  resources :users

  # Routes go in here
  # resources :users, only: [:show, :new, :index, :create]
  # root 'users#index'
  # get '/login', to: 'sessions#new'
  # post '/login', to: 'sessions#create'
  # delete '/login', to: 'sessions#destroy', as: :logout
end
