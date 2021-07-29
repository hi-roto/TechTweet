Rails.application.routes.draw do
  devise_for :users
  root to: "tweets#index"
  resources :tweets
  # , only: [:index, :new, :create, :destroy, :edit, :update, :show]
  # get '/tweets', to: "tweets#index", as: :tweets
  # get 'tweets/new', to: "tweets#new", as: :new_tweet
  # post "/tweets", to: "tweets#create"
  # delete "/tweets/:id", to: "tweets#delete"
  # get "/tweets/:id/edit", to: "tweets#edit", as: :edit_tweet
  # patch "/tweets/:id", to: "tweets#update"
  # get "/tweets/:id", to: "tweets#show", as: :tweet
end
