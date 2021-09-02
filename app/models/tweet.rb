class Tweet < ApplicationRecord
  validates :text, presence: true
  belongs_to :user

  has_many :likes, dependent: :destroy
  def like?(user)
    likes.where(user_id: user.id).exists?
  end

  has_many :messages, dependent: :destroy
end





# ApplicationRecord
# ActiveRecord::Base

