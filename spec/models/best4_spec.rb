require 'rails_helper'

RSpec.describe Best4, type: :model do
  before do
    @best4 = FactoryBot.build(:best4)
  end
  describe '新規評価登録' do
    context '評価登録できるとき' do
      it 'user_id, battler_id, foundation, accuracy, originality, dynamic, strategy, scoreが存在すれば登録できる' do
        expect(@best4).to be_valid
      end
    end
    context '評価登録できない時' do
      it 'battler_idが選択されていないと登録できない' do
        @best4.battler_id = ''
        @best4.valid?
        expect(@best4.errors.full_messages).to include("Battler 選択してください")
      end
      it 'battler_idが1だと登録できない' do
        @best4.battler_id = 1
        @best4.valid?
        expect(@best4.errors.full_messages).to include("Battler 選択してください")
      end
      it 'foundationが空だと登録できない' do
        @best4.foundation = ''
        @best4.valid?
        expect(@best4.errors.full_messages).to include("Foundation can't be blank")
      end
      it 'accuracyが空だと登録できない' do
        @best4.accuracy = ''
        @best4.valid?
        expect(@best4.errors.full_messages).to include("Accuracy can't be blank")
      end
      it 'originalityが空だと登録できない' do 
        @best4.originality = ''
        @best4.valid?
        expect(@best4.errors.full_messages).to include("Originality can't be blank")
      end
      it 'dynamicが空だと登録できない' do 
        @best4.dynamic = ''
        @best4.valid?
        expect(@best4.errors.full_messages).to include("Dynamic can't be blank")
      end
      it 'strategyが空だと登録できない' do 
        @best4.strategy = ''
        @best4.valid?
        expect(@best4.errors.full_messages).to include("Strategy can't be blank")
      end
      it 'scoreが空だと登録できない' do 
        @best4.score = ''
        @best4.valid?
        expect(@best4.errors.full_messages).to include("Score can't be blank")
      end
    end
  end
end
