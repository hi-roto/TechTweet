Rails.application.routes.draw do
  root to: "tweets#index"
  resources :tweets, only: [:index, :new, :create, :destroy, :edit, :update]
  # get '/tweets', to: "tweets#index"
  # get 'tweets/new', to: "tweets#new", as: :new_tweet
  # post "/tweets", to: "tweets#create"
  # delete "/tweets/:id", to: "tweets#delete"
  # get "/tweets/:id/edit", to: "tweets#edit", as: :edit_tweet
  # patch "/tweets/:id", to: "tweets#update", as: :tweet
end
