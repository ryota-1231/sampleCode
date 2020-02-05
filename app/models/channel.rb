class Channel < ApplicationRecord
  has_many :channels_users
  has_many :users, through: :channels_users
end