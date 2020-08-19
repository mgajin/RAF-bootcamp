Rails.application.routes.draw do
 
  root 'pages#index', as: 'home'
  get '/admin' => 'pages#admin', as: 'admin'

  resources :users, only: [:show, :new, :create]
  resources :courses
  resources :professors

  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/logout' => 'sessions#destroy'

end