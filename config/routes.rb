Rails.application.routes.draw do
  root 'dives#index'

  devise_for :users

  resources :dives, except: [:index]

  resources :users do
    resources :dives, only: [:index]
  end
end
