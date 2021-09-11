require 'rails_helper'

RSpec.describe User, type: :model do
  describe '#create' do
    before do
      @user = FactoryBot.build(:user)
    end
    # 新規登録/ユーザー情報

    describe 'ユーザー新規登録' do
      context 'ユーザー新規登録ができる時' do
        it '全ての値が正しい場合に登録ができること' do
          expect(@user).to be_valid
        end

        it 'ユーザー写真が抜けていても登録できること' do
          @user.avatar = ''
          expect(@user).to be_valid
        end
      end
      context 'ユーザー新規登録ができない時' do
        it 'ニックネームが必須であること' do
          @user.nickname = ''
          @user.valid?
          expect(@user.errors.full_messages).to include('Nicknameを入力してください')
        end

        it '年齢が必須であること' do
          @user.age = ''
          @user.valid?
          expect(@user.errors.full_messages).to include('Ageを入力してください')
        end

        it 'メールアドレスが必須であること' do
          @user.email = ''
          @user.valid?
          expect(@user.errors.full_messages).to include('Eメールを入力してください')
        end

        it 'メールアドレスが一意性であること' do
          @user.save
          another_user = FactoryBot.build(:user)
          another_user.email = @user.email
          another_user.valid?
          expect(another_user.errors.full_messages).to include('Eメールはすでに存在します')
        end

        it 'メールアドレスは、@を含む必要があること' do
          @user.email = 'test.co.jp'
          @user.valid?
          expect(@user.errors.full_messages).to include('Eメールは不正な値です')
        end

        it 'パスワードが必須であること' do
          @user.password = ''
          @user.valid?
          expect(@user.errors.full_messages).to include('パスワードを入力してください')
        end

        it 'パスワードとパスワード（確認）は、値の一致が必須であること' do
          @user.password = '123456'
          @user.password_confirmation = '1234567'
          @user.valid?
          expect(@user.errors.full_messages).to include('パスワード（確認用）とパスワードの入力が一致しません')
        end

        it 'パスワードは、5文字以下では登録できないこと' do
          @user.password = '00000'
          @user.password_confirmation = '00000'
          @user.valid?
          expect(@user.errors.full_messages).to include('パスワードは6文字以上で入力してください')
        end

        it 'パスワードは、半角英語のみでは登録できないこと' do
          @user.password = 'aaaaasss'
          @user.password_confirmation = 'aaaaasss'
          @user.valid?
          expect(@user.errors.full_messages).to include('パスワードは不正な値です')
        end

        it 'パスワードは、半角数字のみでは登録できないこと' do
          @user.password = '123456',
                           @user.password_confirmation = '123456'
          @user.valid?
          expect(@user.errors.full_messages).to include('パスワードは不正な値です')
        end

        it 'パスワードは、全角英数混合では登録できないこと' do
          @user.password = 'ＡＡＡＡＡ１１'
          @user.password_confirmation = 'ＡＡＡＡＡ１１'
          @user.valid?
          expect(@user.errors.full_messages).to include('パスワードは不正な値です')
        end

        it '性別が必須であること' do
          @user.gender = ''
          @user.valid?
          expect(@user.errors.full_messages).to include('Genderを入力してください')
        end
      end
    end
  end
end

# bundle exec rspec spec/models/user_spec.rb
