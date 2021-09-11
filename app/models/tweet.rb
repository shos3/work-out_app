class Tweet < ApplicationRecord

  belongs_to :user
  has_many :messages, dependent: :destroy
  has_many :likes, dependent: :destroy


  def like?(user)
    likes.where(user_id: user.id).exists?
  end



  validates :text, presence: true
end

