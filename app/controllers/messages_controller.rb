class MessagesController < ApplicationController
#  def create
   # @tweet = Tweet.find(params[:tweet_id])
   # @message = @tweet.messages.new(message_params)
  #  @message.user_id = current_user.id
  #  if @message.save
  #    redirect_to request.referer
  #  else
  #    @tweet_new = Book.new
  #    @comments = @post.comments
  #    redirect_to new_post_path
  #  end
# end

#  def destroy
#    @post = Post.find(params[:post_id])
#    @comment = Comment.find(params[:id])
#    @comment.destroy
#    redirect_to request.referer
#  end

#  private

#  def comment_params
#    params.require(:comment).permit(:comment)
#  end

   def create
    @tweet = Tweet.find(params[:tweet_id])
    @message = @tweet.messages.new(message_params)
    @message.user_id = current_user.id
    if @message.save
      redirect_to request.referer
    else
      @tweet_new = Book.new
      @comments = @post.comments
      redirect_to new_post_path
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to request.referer
  end

  private

  def message_params
    params.require(:message).permit(:text)
  end

end
