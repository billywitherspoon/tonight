Rails.application.routes.draw do
  resources :events
  resources :check_ins
  resources :ratings
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
