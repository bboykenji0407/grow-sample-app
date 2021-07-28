require 'rails_helper'

RSpec.describe Final, type: :model do
  before do
    @final = FactoryBot.build(:final)
  end
  describe '新規評価登録' do
    context '評価登録できるとき' do
      it 'user_id, battler_id, foundation, accuracy, originality, dynamic, strategy, scoreが存在すれば登録できる' do
        expect(@final).to be_valid
      end
    end
    context '評価登録できない時' do
      it 'battler_idが選択されていないと登録できない' do
        @final.battler_id = ''
        @final.valid?
        expect(@final.errors.full_messages).to include("バトラーIDを選択してください")
      end
      it 'battler_idが1だと登録できない' do
        @final.battler_id = 1
        @final.valid?
        expect(@final.errors.full_messages).to include("バトラーIDを選択してください")
      end
      it 'foundationが空だと登録できない' do
        @final.foundation = ''
        @final.valid?
        expect(@final.errors.full_messages).to include("基礎値を入力してください")
      end
      it 'accuracyが空だと登録できない' do
        @final.accuracy = ''
        @final.valid?
        expect(@final.errors.full_messages).to include("正確性を入力してください")
      end
      it 'originalityが空だと登録できない' do 
        @final.originality = ''
        @final.valid?
        expect(@final.errors.full_messages).to include("独創性を入力してください")
      end
      it 'dynamicが空だと登録できない' do 
        @final.dynamic = ''
        @final.valid?
        expect(@final.errors.full_messages).to include("ダイナミックを入力してください")
      end
      it 'strategyが空だと登録できない' do 
        @final.strategy = ''
        @final.valid?
        expect(@final.errors.full_messages).to include("戦略を入力してください")
      end
      it 'scoreが空だと登録できない' do 
        @final.score = ''
        @final.valid?
        expect(@final.errors.full_messages).to include("合計を入力してください")
      end
    end
  end
end
