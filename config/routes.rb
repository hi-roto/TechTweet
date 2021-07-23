Rails.application.routes.draw do
  root to: "tweets#index"
  resources :tweets, only: :index
  # get '/tweets', to: "tweets#index"
end
