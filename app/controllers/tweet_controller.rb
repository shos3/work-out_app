class TweetController < ApplicationController
  before_action :authenticate_user!

  def index
    query = 'SELECT * FROM tweets'
    @tweets = Tweet.find_by_sql(query)
    @tweets = Tweet.all.order(created_at: :desc)
    @message = Message.new
  end

  def new
    @tweet = Tweet.new
  end

  def create
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
      redirect_to tweet_index_path
    else
      render 'new'
    end
  end

  def show
    @tweet = Tweet.find_by(id: params[:id])
    @user = User.find_by(id: @tweet.user.id)
    @message = Message.new
    @messages = @tweet.messages
  end

  def destroy
    @tweet = Tweet.find(params[:id])
    @tweet.destroy
    redirect_to tweet_index_path
  end

  def search
    @tweets = Tweet.search(params[:keyword])
  end

  private

  def tweet_params
    params.require(:tweet).permit(:text).merge(user_id: current_user.id)
  end
end
