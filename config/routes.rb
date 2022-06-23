Rails.application.routes.draw do
  resources :translations
  resources :users
  resources :words_lists
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get '/top', to: 'translations#top'

  post '/auth/login', to: 'authentication#login'
  
  get 'password/reset', to: 'password_resets#new'
  post 'password/reset', to: 'password_resets#create'
  get 'password/reset/edit', to: 'password_resets#edit'
  patch 'password/reset/edit', to: 'password_resets#update'
  
  get '/*a', to: 'application#not_found'
end
