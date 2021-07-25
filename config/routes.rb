Rails.application.routes.draw do
  root to: "tweets#index"
  resources :tweets, only: [:index, :new, :create]
  # get '/tweets', to: "tweets#index"
  # get '/tweets/new', to: "tweets#new"
  # post "/tweets", to: "tweets#create"
end
