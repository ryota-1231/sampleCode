class Channel < ApplicationRecord
  has_many :channels_users
  has_many :users, through: :channels_users
  accepts_nested_attributes_for :channels_users
end