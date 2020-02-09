class RoomsController < ApplicationController
  before_action :authenticate_user!

  def index
    @messages = Message.includes(:user).order(:id).last(100)
    @message = current_user.messages.build
    @channel = current_user.channels
  end

  def show
    # 投稿一覧表示に利用
    @messages = Message.includes(:user).order(:id).last(50)
    # メッセージ投稿に利用
    @message = current_user.messages.build
    # @messe= Message.find(params[:id])
  end

  def delete
    render "users/sign-in"
  end

  def show_additionally
    last_id = params[:oldest_message_id].to_i - 1    
    @messages = Message.includes(:user).order(:id).where(id: 1..last_id).last(50)
  end
end
