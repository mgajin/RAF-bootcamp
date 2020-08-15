Rails.application.routes.draw do
 
  root 'pages#index', as: 'home'

  get 'admin' => 'pages#admin', as: 'admin'
  get 'users/login' => 'users#login', as: 'login'
  get 'users/signup' => 'users#signup', as: 'signup'

  resources :users
  resources :courses
  resources :professors

end