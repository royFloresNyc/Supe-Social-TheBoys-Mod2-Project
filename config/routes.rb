Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html


  resources :users, :supes, :products, :posts, :events, :comments, :sessions

  get '/login', to: 'sessions#new', as: 'new_login'
  post '/login', to: 'sessions#create', as: 'login'
  delete '/logout', to: 'sessions#destroy', as: 'logout'

end
