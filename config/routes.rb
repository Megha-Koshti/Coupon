Rails.application.routes.draw do
  get 'cars/index', to: "cars#index"
  root 'cars#index'
  resources :cars
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

end
