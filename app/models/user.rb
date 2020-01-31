class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
  has_one_attached :avatar  
  has_many :messages, dependent: :destroy

  def thumbnail
    return self.avatar.variant(resize: '50x50')
  end
end
