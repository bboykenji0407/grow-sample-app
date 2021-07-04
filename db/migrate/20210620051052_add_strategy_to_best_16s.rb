class AddStrategyToBest16s < ActiveRecord::Migration[6.0]
  def change
    add_column :best_16s, :strategy, :integer, null: false
  end
end
