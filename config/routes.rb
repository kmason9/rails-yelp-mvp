Rails.application.routes.draw do
  get "up" => "rails/health#show", as: :rails_health_check

  root to: "restaurants#index"

  # get "restaurants/new", to: "restaurants#new"
  # post "restaurants", to: "restaurants#create"

  # get "/restaurants", to: "restaurants#index"
  # get "/restaurants/:id", to: "restaurants#show"

  resources :restaurants, except: %i[edit update destroy] do
    resources :reviews, only: %i[new create]
  end
end
