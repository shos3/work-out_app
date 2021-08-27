class TweetController < ApplicationController
  before_action :authenticate_user!

  def index
    query = 'SELECT * FROM tweets'
    @tweets = Tweet.find_by_sql(query)
    @tweets = Tweet.all.order(created_at: :desc)

    @messages = Message.all
    @message = Message.new
  end

  def new
    @tweet = Tweet.new
  end

  def create
    # binding.pry
    @tweet = Tweet.new(tweet_params)
    if @tweet.save
      redirect_to tweet_index_path
    else
      render 'new'
    end

    @message = Message.new(text: params[:message][:text])
    # binding.pry
    # if @message.save
    # ActionCable.server.broadcast 'message_channel', content: @message
    # end
  end

  # def show
  # end

  def destroy
    @tweet = Tweet.find(params[:id])
    @tweet.destroy
    redirect_to tweet_index_path
  end

  private

  def tweet_params
    params.require(:tweet).permit(:text).merge(user_id: current_user.id)
  end
end
