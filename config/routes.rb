Rails.application.routes.draw do
  
  resources :machines
  resources :organizations
  # root 'organizations#index'
  root 'machines#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
