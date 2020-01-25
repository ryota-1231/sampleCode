class MessagesController < ApplicationController
  before_action :authenticate_user!

 

  def new

  end

  def create
    @messages = Message.new(message_params)
    if @messages.save
      redirect_to action: 'index'
      return
    else
      redirect_to action: 'index' 
      return
    end
  end
  
  def delete
    render "users/sign-in"
  end

  private

  def message_params
    params.permit(:message)
  end

end
