require 'rails_helper'

RSpec.describe Best4, type: :model do
  before do
    @best8 = FactoryBot.build(:best8)
  end
  describe '新規評価登録' do
    context '評価登録できるとき' do
      it 'user_id, battler_id, foundation, accuracy, originality, dynamic, strategy, scoreが存在すれば登録できる' do
        expect(@best8).to be_valid
      end
    end
    context '評価登録できない時' do
      it 'battler_idが選択されていないと登録できない' do
        @best8.battler_id = ''
        @best8.valid?
        expect(@best8.errors.full_messages).to include("Battler 選択してください")
      end
      it 'battler_idが1だと登録できない' do
        @best8.battler_id = 1
        @best8.valid?
        expect(@best8.errors.full_messages).to include("Battler 選択してください")
      end
      it 'foundationが空だと登録できない' do
        @best8.foundation = ''
        @best8.valid?
        expect(@best8.errors.full_messages).to include("Foundation can't be blank")
      end
      it 'accuracyが空だと登録できない' do
        @best8.accuracy = ''
        @best8.valid?
        expect(@best8.errors.full_messages).to include("Accuracy can't be blank")
      end
      it 'originalityが空だと登録できない' do 
        @best8.originality = ''
        @best8.valid?
        expect(@best8.errors.full_messages).to include("Originality can't be blank")
      end
      it 'dynamicが空だと登録できない' do 
        @best8.dynamic = ''
        @best8.valid?
        expect(@best8.errors.full_messages).to include("Dynamic can't be blank")
      end
      it 'strategyが空だと登録できない' do 
        @best8.strategy = ''
        @best8.valid?
        expect(@best8.errors.full_messages).to include("Strategy can't be blank")
      end
      it 'scoreが空だと登録できない' do 
        @best8.score = ''
        @best8.valid?
        expect(@best8.errors.full_messages).to include("Score can't be blank")
      end
    end
  end
end
