Rails.application.routes.draw do
  resources :chemreqs
  devise_for :users
  resources :anouncements
  resources :chemicals
  root to: "anouncements#index"
end
