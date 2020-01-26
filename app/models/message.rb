class Message < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  validates :message, presence: true, length: { maximum: 500 }

  def template
    ApplicationController.renderer.render partial: 'messages/message', locals: { message: self }
  end

end
