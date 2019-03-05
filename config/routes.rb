Rails.application.routes.draw do
  resources :venues, only: [:index, :show]
  resources :neighborhoods, only: [:index, :show]
  resources :events, only: [:index, :show]
  resources :check_ins, only: [:index, :show, :new]
  resources :users
end
