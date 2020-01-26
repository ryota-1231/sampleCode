class MessagesController < ApplicationController
  before_action :authenticate_user!

  def new

  end

  def create
    @message = current_user.messages.create!(message_params)
    ActionCable.server.broadcast 'room_channel', message: @message.template
  end
  
  def delete
    render "users/sign-in"
  end

  private
  def message_params
    params.require(:message).permit(:message)
  end

end
