Rails.application.routes.draw do
  devise_for :users #, :controllers => { :omniauth_callbacks => "callbacks" }
  resources :products
  root 'products#index'
  resources :slack_responses, only: :create
end