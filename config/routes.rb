Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :users, :supes, :products, :posts, :events, :comments, :sessions, :user_supes, :user_events, :charges
  resources :cart_products, only: [:create, :destroy]
  resources :purchases, only: [:show, :index]

  get '/home', to: 'users#home', as: 'user_home'
  get '/cart', to: 'users#my_cart', as: 'user_cart'
  post '/comments', to: 'comments#create'
  get '/', to: 'sessions#new', as: 'new_login'
  post '/', to: 'sessions#create', as: 'login'
  delete '/logout', to: 'sessions#destroy', as: 'logout'
  get '/confirmation', to: 'purchases#confirmation', as: 'confirmation'
end