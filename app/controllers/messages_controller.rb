class MessagesController < ApplicationController


  def create
    @message = Message.create(message_params)
    respond_to do |format|
      if @message.save
        format.html { redirect_back(fallback_location: tweet_index_path) }
        format.js
      else
        format.html { redirect_back(fallback_location: tweet_index_path) }
      end
    end
  end

  def destroy
    @tweet = Tweet.find(params[:tweet_id])
    @message = current_user.messages.find_by(tweet_id: @tweet.id)
    @message.destroy
    redirect_back(fallback_location: tweet_index_path)
  end

  private
  def message_params
    params.require(:message).permit(:content).merge(user_id: current_user.id, tweet_id: params[:tweet_id])
  end


end