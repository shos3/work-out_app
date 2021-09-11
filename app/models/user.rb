class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :plans
  has_many :tweets, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :messages, dependent: :destroy

  has_one_attached :avatar

  with_options presence: true do
    validates :nickname
    validates :age
    validates :gender
  end
  validates :password, on: :create, format: { with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]+\z/i } # 半角英数混合でないといけない。

  def posts
    Tweet.where(user_id: id)
  end
end
