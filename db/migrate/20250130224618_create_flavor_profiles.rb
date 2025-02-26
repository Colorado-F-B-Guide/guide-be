class CreateFlavorProfiles < ActiveRecord::Migration[7.2]
  def change
    create_table :flavor_profiles do |t|
      t.references :beer_style, null: false, foreign_key: true
      t.references :recipe_category, null: false, foreign_key: true
      t.integer :sweet
      t.integer :bitter
      t.integer :sour
      t.integer :spicy
      t.integer :pairing_strength

      t.timestamps
    end
  end
end
