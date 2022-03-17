Rails.application.routes.draw do
  resources :cart_items
  resources :carts
  resources :products do
    collection do
      get 'api'
    end
  end
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "users#index"

  namespace :api do
    resources :sessions, only: :create
    resources :carts, only: [:index,:create,:destroy] do
      collection do
        post 'finish'
      end
    end
  end
end
