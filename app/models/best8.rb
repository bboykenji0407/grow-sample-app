class Best8 < ApplicationRecord

  with_options presence: true do
    validates :foundation
    validates :accuracy
    validates :originality
    validates :dynamic
    validates :strategy
    validates :score
    validates :battler_id
  end

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :battler
  belongs_to :user
end
