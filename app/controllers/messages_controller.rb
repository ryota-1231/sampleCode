class MessagesController < ApplicationController
  before_action :authenticate_user!

  def index
    @messages = Message.all
  end

  def delete
    render "users/sign-in"
  end

  def new
    binding.pry
  end

  def create
    binding.pry
    @message = Message.new(message_params)
    if @message.save
      redirect_to action: 'index'
      return
    else
      redirect_to action: 'index' 
      return
    end
  end
  


  private

  def message_params
    params.permit(:message)
  end

end
