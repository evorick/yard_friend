Rails.application.routes.draw do
  resources :reservations
  resources :listings
  root to: 'listings#index'
  devise_for :users
  resources :users
end
