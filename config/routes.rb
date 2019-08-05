Rails.application.routes.draw do
  
  devise_for :users, controllers: {
        sessions: 'users/sessions'
      }

  resources :people
  resources :contracts
  resources :mslogs
  resources :svclogs
  # root 'organizations#index'
  # root 'machines#index'
  root to: 'dashboard#index'

  resources :organizations
  resources :machines
end