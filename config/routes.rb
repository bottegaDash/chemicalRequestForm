Rails.application.routes.draw do
  devise_for :users
  resources :anouncements
  root to: "anouncements#index"
end
