Rails.application.routes.draw do
  resources :users
  resources :games
  resources :bets
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  post "/signup", to: "users#create"
  get "/me", to: "users#me"
  post "/login", to: "session#create" 
  delete "/logout", to: "session#destroy"

  get "bets/:id", to: "bets#show"
  get "users/:id", to: "users#show"
  # get "/bets/:id/team1_odds", to: "bets#show_odds"
  # get "/bets/:id/team2_odds", to: "bets#show_odds"

  # get "/bets", to: "bets#index"

  # Defines the root path route ("/")
  # root "articles#index"
end
