class MessagesController < ApplicationController
  before_action :authenticate_user!

  def index
    @messages = "message"
  end

  def delete
    render "users/sign-in"
  end
  
end
