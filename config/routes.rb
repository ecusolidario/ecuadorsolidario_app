Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/campamento', as: 'rails_admin'
  resources :casos
  root to: 'visitors#index'
  devise_for :users
  resources :users
end
