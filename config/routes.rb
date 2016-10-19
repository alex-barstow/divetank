Rails.application.routes.draw do
  root 'dives#index'

  devise_for :users

  resources :dives do
    resources :images, only: [:create]
  end
end
