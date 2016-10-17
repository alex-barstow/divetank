Rails.application.routes.draw do
  root 'users#index'

  devise_for :users

  resources :users do
    resources :dives, only: [:index]
  end
  resources :dives, only: [:show]
end
