Rails.application.routes.draw do
  
  resources :offices
  resources :employees
  resources :companies
  resources :buildings, only: [:index, :show, :edit, :update]
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
