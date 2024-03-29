Rails.application.routes.draw do
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  root to: "pages#home", as: :home
  get "about" => "pages#about", as: :about
  get "profile/:id" => "pages#profile", as: :profile

  resources :clubs
  resources :posts
  resources :comments
  resources :memberships, only: [:create, :destroy, :update]

  get "search" => "search#search", as: :search
  # Defines the root path route ("/")
  # root "posts#index"

  # Routes for the Events controller

  resources :events, only: [:new, :create, :show, :edit, :update, :destroy]
end
