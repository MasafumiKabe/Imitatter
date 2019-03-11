class FavoritesController < ApplicationController
  before_action :require_user_logged_in
  
  def create
    tweet = Tweet.find(params[:tweet_id])
    current_user.like(tweet)
    redirect_back(fallback_location: root_path)
  end

  def destroy
    tweet = Tweet.find(params[:tweet_id])
    current_user.unlike(tweet)
    redirect_back(fallback_location: root_path)
  end
end
