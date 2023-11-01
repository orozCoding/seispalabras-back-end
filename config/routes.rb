# == Route Map
#

Rails.application.routes.draw do
  resources :users
  resources :translations
  resources :word_lists
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "translations#top"

  get '/top', to: 'translations#top'

  post '/auth/login', to: 'authentication#login'
  
  get 'password/reset', to: 'password_resets#new'
  post 'password/reset', to: 'password_resets#create'
  post 'password/reset/edit', to: 'password_resets#edit'
  patch 'password/reset/edit', to: 'password_resets#update'

  get '/session', to: 'sessions#index' 

  get '/default/list', to: 'list#index'
  
  get '/*a', to: 'application#not_found'
end
