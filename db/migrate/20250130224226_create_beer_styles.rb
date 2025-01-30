class CreateBeerStyles < ActiveRecord::Migration[7.2]
  def change
    create_table :beer_styles do |t|
      t.string :name, null: false
      t.text :description
      t.string :aroma
      t.integer :bitterness
      t.decimal :alcohol_by_volume, precision: 4, scale: 2

      t.timestamps
    end
  end
end
