Rails.application.routes.draw do
  devise_for :users
  resources :wallets, only: [:index, :show, :new, :create]
  root to: 'wallets#index'
end
