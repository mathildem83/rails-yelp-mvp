Rails.application.routes.draw do
  get 'reviews/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
  resources :restaurants, only: [ :index, :new, :show, :create ] do
    resources :reviews, only: [ :new, :create ]
  end
  # get "restaurants", to: "restaurants#index", as: :restaurants
  # get "restaurants/new", to: "restaurants#new", as: :new_restaurant
  # get "restaurants/:restaurant_id/reviews/new", to: "reviews#new", as: :new_review
  # get "restaurants/:id", to: "restaurants#show", as: :restaurant
  # post "restaurants", to: "restaurants#create"
end
