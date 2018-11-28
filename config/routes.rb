Rails.application.routes.draw do
  resources :request_forms
  devise_for :users
  resources :anouncements
  resources :chemicals
  root to: "anouncements#index"
end
