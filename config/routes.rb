Rails.application.routes.draw do
  devise_for :users
  root to: 'idioms#index'
  resources :idioms
end
