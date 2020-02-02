class Message < ApplicationRecord
  belongs_to :user
  validates :user_id, presence: true
  validates :message, presence: true, length: { maximum: 500 }

  def template
    # 部分テンプレート。「partial」でviewの「messages」の「message.html.haml」を読み込んで「locals：」で変数を指定、「message」に「self」を代入している。これでレンダー先で「message」変数を使える
    ApplicationController.renderer.render partial: 'messages/message', locals: { message: self }
    
  end

end
