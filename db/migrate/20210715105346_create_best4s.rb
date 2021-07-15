class CreateBest4s < ActiveRecord::Migration[6.0]
  def change
    create_table :best4s do |t|

      t.timestamps
    end
  end
end
