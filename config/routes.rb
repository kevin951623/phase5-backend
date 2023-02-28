Rails.application.routes.draw do
  resources :users
  resources :games
  resources :bets
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  post "/signup", to: "users#create"
  get "/me", to: "users#me"
  post "/login", to: "session#create" 
  delete "/logout", to: "session#destroy"

  get "/bets", to: "bets#index"

  # Defines the root path route ("/")
  # root "articles#index"
end
