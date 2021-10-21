Rails.application.routes.draw do
  devise_for :users
  root to: 'idioms#index'
  get 'idioms', to: 'idioms#overview'
  resources :idioms
  resources :users, only: :show
end