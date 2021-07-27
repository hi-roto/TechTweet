class TweetsController < ApplicationController
  
  def index 
    @tweets = Tweet.all
  end

  def new
    @tweet = Tweet.new
  end 

  def create
    Tweet.create(tweet_params)
  end

  def edit
    @edit_tweet = Tweet.find(params[:id])
  end
  
  def update
    update_tweet = Tweet.find(params[:id])
    update_tweet.update(tweet_params)
  end
  
  def destroy
    delete_tweet = Tweet.find(params[:id])
    delete_tweet.destroy
  end


  private
  def tweet_params
    params.require(:tweet).permit(:name, :text, :image)
  end
end
