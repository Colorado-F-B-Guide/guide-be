class CreateIngredients < ActiveRecord::Migration[7.2]
  def change
    create_table :ingredients do |t|
      t.references :recipe, null: false, foreign_key: true
      t.string :name, null: false
      t.decimal :amount, precision: 5, scale: 2
      t.string :measurement_unit
      t.string :category

      t.timestamps
    end
  end
end
