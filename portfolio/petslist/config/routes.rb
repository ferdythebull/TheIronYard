Rails.application.routes.draw do

  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]

  devise_for :users

  resources :users do
    member do
      resource :profile
      resource :info
      get :account_settings
      get :password
      get :photo
      get :profile
      get :locations
    end
    resources :messages, only: [:create, :new]
    resources :responses, only: [:index]
    resources :visits, only: [:index]
  end

  resources :conversations, only: [:index, :create, :show, :destroy]
  resources :responses, except: [:index, :new]


  root 'locations#index'

  resources :locations
  resources :shelters
  
end
