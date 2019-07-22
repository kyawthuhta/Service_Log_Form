Rails.application.routes.draw do
  
  
  devise_for :users
  resources :people
  resources :contracts
  resources :mslogs
  resources :svclogs
  # root 'organizations#index'
  root 'machines#index'

  resources :organizations
  resources :machines
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
