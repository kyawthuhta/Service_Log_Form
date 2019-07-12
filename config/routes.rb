Rails.application.routes.draw do
  
  devise_for :users
  resources :people
  # root 'organizations#index'
  # root 'machines#index'
  root 'people#index'

  resources :organizations
  resources :machines
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
