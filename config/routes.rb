Rails.application.routes.draw do
 
  root 'pages#index', as: 'home'
  get '/admin' => 'pages#admin', as: 'admin'

  resources :users, only: [:show, :new, :create]
  resources :subscriptions, only: [:create, :destroy]
  resources :subjects, only: [:show, :new, :create]
  resources :courses, only: [:index, :show, :new, :create, :destroy]
  resources :professors, only: [:index, :show, :new, :create, :destroy]

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

end