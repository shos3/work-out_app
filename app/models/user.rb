class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
          :recoverable, :rememberable, :validatable
          has_many :plans
          has_many :tweets
          has_many :likes

          validates :nickname,presence: true
          validates :age,presence: true
end
