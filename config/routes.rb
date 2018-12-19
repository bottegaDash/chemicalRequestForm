Rails.application.routes.draw do
  resources :requests do
    collection do
      post 'retrive'
      get 'dosearch'
    end
  end
  devise_for :users
  resources :anouncements
  resources :chemicals
  root to: "anouncements#index"
end
