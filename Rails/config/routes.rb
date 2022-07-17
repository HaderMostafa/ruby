Rails.application.routes.draw do
  # get 'products/index'

  # get 'admins/show'
  # get "/products", to: "products#index"
  # get "/products/:id", to: "products#show"

  resources :products
  resources :admins

  # get "/articles", to: "articles#index"

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "products#index"
end
