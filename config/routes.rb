Rails.application.routes.draw do
  resources :venues
  resources :neighborhoods
  resources :events
  resources :users
  resources :sessions 
  resources :check_ins, only: [:new, :create]
  get '/login', to: 'sessions#new', as: :login
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  post '/user_check_in', to: 'check_ins#new'
  delete '/user_check_out', to: 'check_ins#destroy'
  get '/', to: 'events#index', as: :home
  #delete '/logout', to: 'sessions#destroy', as: :logout
end

# resources :students, only: [:show, :new, :index, :create]
# root 'students#index'
# get '/login', to: 'sessions#new'
# post '/login', to: 'sessions#create'
# delete '/login', to: 'sessions#destroy', as: :logout
# resources :users, only: [:new, :create]
