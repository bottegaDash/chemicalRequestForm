Rails.application.routes.draw do
  resources :requests
  devise_for :users
  resources :anouncements
  resources :chemicals
  root to: "anouncements#index"
end
