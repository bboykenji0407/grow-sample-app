require 'rails_helper'

RSpec.describe Best16, type: :model do
  before do
    @best16 = FactoryBot.build(:best16)
  end
  describe '新規評価登録' do
    context '評価登録できるとき' do
      it 'user_id, battler_id, foundation, accuracy, originality, dynamic, strategy, scoreが存在すれば登録できる' do
        expect(@best16).to be_valid
      end
    end
    context '評価登録できない時' do
      it 'battler_idが選択されていないと登録できない' do
        @best16.battler_id = ''
        @best16.valid?
        expect(@best16.errors.full_messages).to include("Battler 選択してください")
      end
      it 'battler_idが1だと登録できない' do
        @best16.battler_id = 1
        @best16.valid?
        expect(@best16.errors.full_messages).to include("Battler 選択してください")
      end
      it 'foundationが空だと登録できない' do
        @best16.foundation = ''
        @best16.valid?
        expect(@best16.errors.full_messages).to include("Foundation can't be blank")
      end
      it 'accuracyが空だと登録できない' do
        @best16.accuracy = ''
        @best16.valid?
        expect(@best16.errors.full_messages).to include("Accuracy can't be blank")
      end
      it 'originalityが空だと登録できない' do 
        @best16.originality = ''
        @best16.valid?
        expect(@best16.errors.full_messages).to include("Originality can't be blank")
      end
      it 'dynamicが空だと登録できない' do 
        @best16.dynamic = ''
        @best16.valid?
        expect(@best16.errors.full_messages).to include("Dynamic can't be blank")
      end
      it 'strategyが空だと登録できない' do 
        @best16.strategy = ''
        @best16.valid?
        expect(@best16.errors.full_messages).to include("Strategy can't be blank")
      end
      it 'scoreが空だと登録できない' do 
        @best16.score = ''
        @best16.valid?
        expect(@best16.errors.full_messages).to include("Score can't be blank")
      end
    end
  end
end