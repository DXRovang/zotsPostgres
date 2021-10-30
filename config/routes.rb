Rails.application.routes.draw do
  resources :instruments
  resources :users
  resources :makers
  resources :categories
  resources :families
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
