Rails.application.routes.draw do
  resources :venues
  resources :neighborhoods
  resources :events
  #resources :check_ins, only: [:create, :edit, :update, :delete, :show, :index]
  resources :users
  resources :sessions
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/login', to: 'sessions#destroy', as: :logout
  post '/check_ins', to: 'check_ins#new', as: :user_check_in

end

# resources :students, only: [:show, :new, :index, :create]
# root 'students#index'
# get '/login', to: 'sessions#new'
# post '/login', to: 'sessions#create'
# delete '/login', to: 'sessions#destroy', as: :logout
# resources :users, only: [:new, :create]
