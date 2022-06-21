Rails.application.routes.draw do
  resources :translations
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  post '/auth/login', to: 'authentication#login'
  get '/*a', to: 'application#not_found'
end
