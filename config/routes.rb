Rails.application.routes.draw do
  devise_for :users
  resources :anouncements
  resources :chemicals
  root to: "anouncements#index"
end
