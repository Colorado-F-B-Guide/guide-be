class CreateFavorites < ActiveRecord::Migration[7.2]
  def change
    create_table :favorites do |t|
      t.references :user, null: false, foreign_key: true
      t.bigint :favoriteable_id, null: false
      t.string :favoriteable_type, null: false  # Supports polymorphism

      t.timestamps
    end

    add_index :favorites, [:favoriteable_type, :favoriteable_id]
  end
end
