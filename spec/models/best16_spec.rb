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
        expect(@best16.errors.full_messages).to include("バトラーIDを選択してください")
      end
      it 'battler_idが1だと登録できない' do
        @best16.battler_id = 1
        @best16.valid?
        expect(@best16.errors.full_messages).to include("バトラーIDを選択してください")
      end
      it 'foundationが空だと登録できない' do
        @best16.foundation = ''
        @best16.valid?
        expect(@best16.errors.full_messages).to include("基礎値を入力してください")
      end
      it 'accuracyが空だと登録できない' do
        @best16.accuracy = ''
        @best16.valid?
        expect(@best16.errors.full_messages).to include("正確性を入力してください")
      end
      it 'originalityが空だと登録できない' do 
        @best16.originality = ''
        @best16.valid?
        expect(@best16.errors.full_messages).to include("独創性を入力してください")
      end
      it 'dynamicが空だと登録できない' do 
        @best16.dynamic = ''
        @best16.valid?
        expect(@best16.errors.full_messages).to include("ダイナミックを入力してください")
      end
      it 'strategyが空だと登録できない' do 
        @best16.strategy = ''
        @best16.valid?
        expect(@best16.errors.full_messages).to include("戦略を入力してください")
      end
      it 'scoreが空だと登録できない' do 
        @best16.score = ''
        @best16.valid?
        expect(@best16.errors.full_messages).to include("合計を入力してください")
      end
    end
  end
end