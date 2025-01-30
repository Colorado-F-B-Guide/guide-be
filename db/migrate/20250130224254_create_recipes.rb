class CreateRecipes < ActiveRecord::Migration[7.2]
  def change
    create_table :recipes do |t|
      t.string :name, null: false
      t.text :description
      t.string :image_url
      t.integer :prep_time
      t.integer :cook_time
      t.string :difficulty
      t.text :chef_notes

      t.timestamps
    end
  end
end
