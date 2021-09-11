class LikeController < ApplicationController
  before_action :set_tweet

  def create
    @like = Like.create(user_id: current_user.id, tweet_id: @tweet.id)
    @like.created_at
    redirect_to tweet_index_path 
  end

  def destroy
    @like = Like.find_by(user_id: current_user.id, tweet_id: @tweet.id)
    @like.destroy
    redirect_to tweet_index_path
  end

  private

  def set_tweet
    @tweet = Tweet.find(params[:tweet_id])
  end
end
