class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable
          has_many :plans
          has_many :tweets, dependent: :destroy
          has_many :likes, dependent: :destroy
          has_many :messages, dependent: :destroy



          validates :nickname,presence: true
          validates :age,presence: true
end
