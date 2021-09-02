class MessagesController < ApplicationController


  def create
    #binding.pry
    @message = Message.new(text: params[:message][:text] [user_id: current_user.id] [tweet_id: tweet.id])
    if @message.save
      ActionCable.server.broadcast 'message_channel', content: @message
    else
      redirect_to tweet_index_path
    end
  end

end