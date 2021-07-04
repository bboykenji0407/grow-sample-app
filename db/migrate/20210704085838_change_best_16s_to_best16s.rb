class ChangeBest16sToBest16s < ActiveRecord::Migration[6.0]
  def change
    rename_table :best_16s, :best16s
  end
end
