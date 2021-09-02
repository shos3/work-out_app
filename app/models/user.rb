class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :plans
  has_many :tweets, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :messages, dependent: :destroy

  has_one_attached :avatar

  validates :nickname, presence: true
  validates :age, presence: true
  validates :gender, presence: true

  def posts
    return Tweet.where(user_id: self.id)
  end

end
