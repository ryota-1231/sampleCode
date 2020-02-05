class ChannelsController < ApplicationController

  def new
    @channels = Channel.new
  end

  def create
    @channels = Channel.new(channel_params)
    if @channels.save
      redirect_to :root
    else
      redirect_to :root
    end
  end

  def show
    # @channels = current_user.channels.find(params)
  end

  private
  def channel_params
    params.permit
  end
end
