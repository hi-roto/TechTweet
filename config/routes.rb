Rails.application.routes.draw do
  resources :tweets, only: :index
  # get '/tweets', to: "tweets#index"
end
