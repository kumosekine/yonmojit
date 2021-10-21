Rails.application.routes.draw do
  devise_for :users
  root to: 'idioms#index'
  resources :idioms do
    resources :comments, only: :create
  end
  resources :users, only: :show
end