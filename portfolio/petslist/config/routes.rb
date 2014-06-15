Rails.application.routes.draw do

  devise_for :users
  root 'shelters#index'

  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]

  resources :users do
    resources :images
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


  resources :locations
  resources :shelters do
    resources :images
    resources :animals
  end

  resources :animals, only: [] do
    resources :pictures
  end

  get 'home/terms'
  get 'home/privacy'
  get 'home/contact'
  get 'home/about'
  get 'home/employer'
  
end
