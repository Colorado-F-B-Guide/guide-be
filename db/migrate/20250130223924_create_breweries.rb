class CreateBreweries < ActiveRecord::Migration[7.2]
  def change
    create_table :breweries do |t|
      t.string :name, null: false
      t.string :location, null: false
      t.date :founded_date
      t.string :website_url

      t.timestamps
    end
  end
end
