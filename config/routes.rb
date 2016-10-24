Rails.application.routes.draw do
  root 'home#index'

  devise_for :users

  resources :users, only: [:edit, :update]

  resources :dives do
    resources :images, only: [:create]
    resources :videos, only: [:create]
  end

  namespace :api do
    namespace :v1 do
      resources :dives, only: [:index, :show]
    end
  end
end
