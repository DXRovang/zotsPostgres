Rails.application.routes.draw do
  get '/signup', to: "users#new" # note: '/signup' = signup_path
  post '/users', to: "users#create"
  
  get '/login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  post '/logout', to: 'sessions#destroy'

  resources :users, except: [:new, :create]

  resources :families, only: [:show] do
    resources :instruments, only: [:new]
    resources :categories, only: [:index]

  end

  resources :families, only: [:index]
  # resources :categories, only: [:index, :show]
  resources :makers, only: [:index, :show]
  resources :instruments, except: [:new]

  get '/auth/facebook/callback', to: 'sessions#create_with_fb'

  end 