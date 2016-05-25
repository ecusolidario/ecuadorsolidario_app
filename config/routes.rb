Rails.application.routes.draw do
  resources :casos
  namespace :admin do
    resources :users
    resources :casos
    resources :recursos
    root to: "users#index"
  end
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
