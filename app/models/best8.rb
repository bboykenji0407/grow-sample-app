class Best8 < ApplicationRecord
  belongs_to :user
  with_options presence: true do
    with_options format: {with: /\A[0-9]+\z/, message: "は半角数字のみ使用してください"} do
      validates :foundation
      validates :accuracy
      validates :originality
      validates :dynamic
      validates :strategy
    end
    validates :score
    validates :battler_id, numericality: { other_than: 1, message: '選択してください'}
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :battler
end
