Rails.application.routes.draw do
  resources :venues
  resources :neighborhoods
  resources :events
  resources :check_ins
  resources :users
  resources :sessions
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/login', to: 'sessions#destroy', as: :logout

end

# resources :students, only: [:show, :new, :index, :create]
# root 'students#index'
# get '/login', to: 'sessions#new'
# post '/login', to: 'sessions#create'
# delete '/login', to: 'sessions#destroy', as: :logout
# resources :users, only: [:new, :create]
