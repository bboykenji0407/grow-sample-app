require 'rails_helper'

RSpec.describe Best8, type: :model do
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
        expect(@best8.errors.full_messages).to include("バトラーIDを選択してください")
      end
      it 'battler_idが1だと登録できない' do
        @best8.battler_id = 1
        @best8.valid?
        expect(@best8.errors.full_messages).to include("バトラーIDを選択してください")
      end
      it 'foundationが空だと登録できない' do
        @best8.foundation = ''
        @best8.valid?
        expect(@best8.errors.full_messages).to include("基礎値を入力してください")
      end
      it 'accuracyが空だと登録できない' do
        @best8.accuracy = ''
        @best8.valid?
        expect(@best8.errors.full_messages).to include("正確性を入力してください")
      end
      it 'originalityが空だと登録できない' do 
        @best8.originality = ''
        @best8.valid?
        expect(@best8.errors.full_messages).to include("独創性を入力してください")
      end
      it 'dynamicが空だと登録できない' do 
        @best8.dynamic = ''
        @best8.valid?
        expect(@best8.errors.full_messages).to include("ダイナミックを入力してください")
      end
      it 'strategyが空だと登録できない' do 
        @best8.strategy = ''
        @best8.valid?
        expect(@best8.errors.full_messages).to include("戦略を入力してください")
      end
      it 'scoreが空だと登録できない' do 
        @best8.score = ''
        @best8.valid?
        expect(@best8.errors.full_messages).to include("合計を入力してください")
      end
    end
  end
end