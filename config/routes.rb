Rails.application.routes.draw do
  get 'rent/yards'

  resources :reservations
  resources :listings
  root to: 'rent#yards'
  devise_for :users
  resources :users
end
