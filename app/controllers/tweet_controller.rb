class TweetController < ApplicationController
  before_action :authenticate_user!

  def index
    query = 'SELECT * FROM tweets'
    @tweets = Tweet.find_by_sql(query)
    @tweets = Tweet.all.order(created_at: :desc)
  

   # @tweet = Tweet.find_by(id: params[:id])
   #@tweet = Tweet.find(params[:id])
    @message = Message.new
   # @messages = @tweet.messages
  end


  def new
   @tweet = Tweet.new


  end


  def create
    @tweet = Tweet.new(tweet_params)
    #binding.pry
    if @tweet.save
      redirect_to tweet_index_path
    else
      render 'new'
    end

  end


    
    #@message = Message.new(text: params[:message][:text])
    # binding.pry
    # if @message.save
    # ActionCable.server.broadcast 'message_channel', content: @message
    # end


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

  private

  def tweet_params
    params.require(:tweet).permit(:text).merge(user_id: current_user.id)
  end


end
