class MessagesController < ApplicationController

  def create
    message_data = params[:message]
    user_id = message_data[0]
    user_match_id = message_data[1]
    content = message_data[2]
    @message = Message.create(
      content: content,
      user_match_id: user_match_id,
      user_id: user_id
      )
    @message.save
    render json: @message
  end

  private
  def message_params
    params.require(:message).permit(:content, :user_id)
  end
end
