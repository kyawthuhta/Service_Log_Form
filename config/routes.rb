Rails.application.routes.draw do
  
  resources :people
  resources :machines
  resources :organizations
  # root 'organizations#index'
  # root 'machines#index'
  root 'people#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
