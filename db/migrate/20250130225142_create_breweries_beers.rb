class CreateBreweriesBeers < ActiveRecord::Migration[7.2]
  def change
    create_table :breweries_beers do |t|
      t.string :name, null: false
      t.references :brewery, null: false, foreign_key: true
      t.references :beer_style, null: false, foreign_key: true
      t.boolean :seasonal, default: false
      t.decimal :price, precision: 8, scale: 2

      t.timestamps
    end
  end
end
