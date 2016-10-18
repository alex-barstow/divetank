Rails.application.routes.draw do
  root 'dives#index'

  devise_for :users

  resources :users do
    resources :dives, only: [:index]
  end
  resources :dives, only: [:show]
end
