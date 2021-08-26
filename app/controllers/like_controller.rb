class LikeController < ApplicationController

  @like = Like.new(user_id: @current_user.id, tweet_id: params[:tweet_id])
  @like.save
  redirect_to("/tweets/#{params[:tweet_id]}")


end









  # before_action :set_post

#  def create
#    Like.create(user_id: current_user.id, post_id: params[:id])
#    @likes = Like.where(user_id: current_user.id)
#    @tweet = Tweet.find(params[:id])
#    @index = params[:index]
#    @tweets = Tweet.all
#  end

#  def destroy
#    @like = Like.find_by(user_id: current_user.id, post_id: params[:id])
#    @like.destroy
#    @likes = Like.where(user_id: current_user)
#    @index = params[:index]
#    @tweets = Tweet.all
#  end

#  private
#    def set_post
#      @post = Post.find(params[:id])
#   end