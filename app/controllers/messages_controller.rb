class MessagesController < ApplicationController
  before_action :authenticate_user!

  def new

  end

  def create
    @message = current_user.messages.create!(message_params)

    # @messageを「message:」をキーとして「room_channel」に渡す。「.template」はモデルで定義
    ActionCable.server.broadcast 'room_channel', message: @message.template

  end

  private
  def message_params
    params.require(:message).permit(:message)
  end

end
