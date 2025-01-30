class CreatePairings < ActiveRecord::Migration[7.2]
  def change
    create_table :pairings do |t|
        t.references :breweries_beer, null: false, foreign_key: true
        t.references :recipe, null: false, foreign_key: true
        t.text :recommendation_note
        t.integer :rating

        t.timestamps
    end
  end
end
