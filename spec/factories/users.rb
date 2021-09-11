FactoryBot.define do
  factory :user do
    email { Faker::Internet.free_email }
    password = '1a' + Faker::Internet.password(min_length: 4)
    password { password }
    password_confirmation { password }
    nickname { '筋トレテスト' }
    age { 20 }
    gender { '男' }
  end
end
