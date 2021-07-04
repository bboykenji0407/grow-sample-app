class CreateBest16s < ActiveRecord::Migration[6.0]
  def change
    create_table :best_16s do |t|
      t.references  :user,  foreign_key: true
      t.integer     :battler_id,  null: false
      t.integer     :foundation,  null: false
      t.integer     :accuracy,    null: false
      t.integer     :originality, null: false
      t.integer     :dynamic,     null: false
      t.integer     :score,       null: false
      t.timestamps
    end
  end
end
