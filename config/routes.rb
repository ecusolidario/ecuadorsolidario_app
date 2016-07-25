Rails.application.routes.draw do
  resources :imagens, only: [:index, :create]
  mount RailsAdmin::Engine => '/campamento', as: 'rails_admin'
  resources :casos
  get '/mis-casos', to: 'casos#mis_casos'
  root to: 'visitors#index'
  devise_for :users
  resources :users

  get 'contact', to: 'mensajes#new', as: 'contact'
  post 'contact', to: 'mensajes#create'

  scope 'api' do
    scope 'v1' do
      scope 'users' do
        post 'create_fb_user', to: 'users#create_via_facebook', as: 'user_fb_create'
      end
    end
  end
end
