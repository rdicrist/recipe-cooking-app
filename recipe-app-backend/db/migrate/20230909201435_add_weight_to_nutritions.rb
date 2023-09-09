class AddWeightToNutritions < ActiveRecord::Migration[6.1]
  def change
    add_column :nutritions, :weight, :integer
  end
end
