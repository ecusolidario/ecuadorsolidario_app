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
  resources :conversations, :path => "conversaciones" do
    resources :messages, :path => "mensajes"
  end
  mount Blogit::Engine => "/blog"

end
