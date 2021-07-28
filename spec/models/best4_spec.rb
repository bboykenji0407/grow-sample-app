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
        expect(@best4.errors.full_messages).to include("バトラーIDを選択してください")
      end
      it 'battler_idが1だと登録できない' do
        @best4.battler_id = 1
        @best4.valid?
        expect(@best4.errors.full_messages).to include("バトラーIDを選択してください")
      end
      it 'foundationが空だと登録できない' do
        @best4.foundation = ''
        @best4.valid?
        expect(@best4.errors.full_messages).to include("基礎値を入力してください")
      end
      it 'accuracyが空だと登録できない' do
        @best4.accuracy = ''
        @best4.valid?
        expect(@best4.errors.full_messages).to include("正確性を入力してください")
      end
      it 'originalityが空だと登録できない' do 
        @best4.originality = ''
        @best4.valid?
        expect(@best4.errors.full_messages).to include("独創性を入力してください")
      end
      it 'dynamicが空だと登録できない' do 
        @best4.dynamic = ''
        @best4.valid?
        expect(@best4.errors.full_messages).to include("ダイナミックを入力してください")
      end
      it 'strategyが空だと登録できない' do 
        @best4.strategy = ''
        @best4.valid?
        expect(@best4.errors.full_messages).to include("戦略を入力してください")
      end
      it 'scoreが空だと登録できない' do 
        @best4.score = ''
        @best4.valid?
        expect(@best4.errors.full_messages).to include("合計を入力してください")
      end
    end
  end
end
