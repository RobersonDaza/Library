Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  get 'home/index'

  resources :users
  resources :books
  resources :searches

  root to: "home#index"
end
