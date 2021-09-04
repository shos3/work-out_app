require 'rails_helper'

RSpec.describe Plan, type: :model do
  describe '#create' do
    before do
      @plan = FactoryBot.build(:plan)
    end
    # トレーニング内容保存

  describe 'トレーニング内容登録' do
    context 'トレーニング内容が保存できる時' do
      it '全ての値が正しい場合に登録ができること' do
        expect(@plan).to be_valid
      end

      it 'メモが抜けていても登録できること' do
        @plan.memo = ''
        expect(@plan).to be_valid
      end


    end
    context 'トレーニング記録が登録できない時' do

      it '日付、時間が必須であること' do
        @plan.start_time = ''
        @plan.valid?
        expect(@plan.errors.full_messages).to include("Start timeを入力してください")
      end

      it 'トレーニング内容が必須であること' do
        @plan.event = ''
        @plan.valid?
        expect(@plan.errors.full_messages).to include("Eventを入力してください")
      end


      it '重量の入力が必須であること' do
        @plan.kg = ''
        @plan.valid?
        expect(@plan.errors.full_messages).to include("Kgを入力してください")
      end

      it '回数の入力が必須であること' do
        @plan.number = ''
        @plan.valid?
        expect(@plan.errors.full_messages).to include("Numberを入力してください")
      end

      it 'セット数の入力が必須であること' do
        @plan.set = ''
        @plan.valid?
        expect(@plan.errors.full_messages).to include("Setを入力してください")
      end

      it 'トレーニング時間の入力が必須であること' do
        @plan.time = ''
        @plan.valid?
        expect(@plan.errors.full_messages).to include("Timeを入力してください")
    end
  end
end
end
end

#bundle exec rspec spec/models/plan_spec.rb