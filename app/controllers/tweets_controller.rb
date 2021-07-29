class TweetsController < ApplicationController
  
  def index 
    @all_tweets = Tweet.all
  end

  def new
    @new_tweet = Tweet.new
  end 

  def create
    Tweet.create(tweet_params)
  end

  def edit
    @edit_tweet = Tweet.find(params[:id])
  end
  
  def update
    update_tweet = Tweet.find(params[:id])
    update_tweet.update(permit_tweet_params)
  end
  
  def show
    @show_tweet = Tweet.find(params[:id])
  end

  def destroy
    delete_tweet = Tweet.find(params[:id])
    delete_tweet.destroy
  end


  private
  def permit_tweet_params
    params.require(:tweet).permit(:name, :text, :image)
  end

end
