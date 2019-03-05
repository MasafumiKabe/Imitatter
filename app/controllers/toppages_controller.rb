class ToppagesController < ApplicationController
  def index
    if logged_in?
      @tweet = current_user.tweets.build
      @tweets = current_user.tweets.order("created_at DESC").page(params[:page])
    end
  end
end
