Rails.application.routes.draw do
  resources :posts
  resources :tests
  devise_for :users
  get 'home/index'
  root to: "home#index"
end
