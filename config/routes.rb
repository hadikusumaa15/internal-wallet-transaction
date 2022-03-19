Rails.application.routes.draw do
  resources :wallets
  devise_for :users

  resources :wallets, only: [:index, :show, :new, :create] do
    get 'sign_out_user'
  end

  root to: 'wallets#index'
end
