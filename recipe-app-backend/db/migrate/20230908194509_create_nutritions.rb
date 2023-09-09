class CreateNutritions < ActiveRecord::Migration[6.1]
  def change
    create_table :nutritions do |t|
      t.integer :calories
      t.integer :protein
      t.integer :carbs
      t.integer :fat

      t.timestamps
    end
  end
end
