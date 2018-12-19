Rails.application.routes.draw do
  namespace :admin do
      resources :users
      resources :anouncements
      resources :carts
      resources :chemicals
      resources :requests
      resources :admin_users

      root to: "users#index"
    end
  resources :requests
  devise_for :users
  resources :anouncements
  resources :chemicals
  root to: "anouncements#index"
end
