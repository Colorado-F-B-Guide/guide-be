# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2025_01_30_225142) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "beer_styles", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.string "aroma"
    t.integer "bitterness"
    t.decimal "alcohol_by_volume", precision: 4, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "breweries", force: :cascade do |t|
    t.string "name", null: false
    t.string "location", null: false
    t.date "founded_date"
    t.string "website_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "breweries_beers", force: :cascade do |t|
    t.string "name", null: false
    t.bigint "brewery_id", null: false
    t.bigint "beer_style_id", null: false
    t.boolean "seasonal", default: false
    t.decimal "price", precision: 8, scale: 2
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["beer_style_id"], name: "index_breweries_beers_on_beer_style_id"
    t.index ["brewery_id"], name: "index_breweries_beers_on_brewery_id"
  end

  create_table "favorites", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "favoriteable_id", null: false
    t.string "favoriteable_type", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["favoriteable_type", "favoriteable_id"], name: "index_favorites_on_favoriteable_type_and_favoriteable_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "flavor_profiles", force: :cascade do |t|
    t.bigint "beer_style_id", null: false
    t.bigint "recipe_category_id", null: false
    t.integer "sweet"
    t.integer "bitter"
    t.integer "sour"
    t.integer "spicy"
    t.integer "pairing_strength"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["beer_style_id"], name: "index_flavor_profiles_on_beer_style_id"
    t.index ["recipe_category_id"], name: "index_flavor_profiles_on_recipe_category_id"
  end

  create_table "ingredients", force: :cascade do |t|
    t.bigint "recipe_id", null: false
    t.string "name", null: false
    t.decimal "amount", precision: 5, scale: 2
    t.string "measurement_unit"
    t.string "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["recipe_id"], name: "index_ingredients_on_recipe_id"
  end

  create_table "pairings", force: :cascade do |t|
    t.bigint "breweries_beer_id", null: false
    t.bigint "recipe_id", null: false
    t.text "recommendation_note"
    t.integer "rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["breweries_beer_id"], name: "index_pairings_on_breweries_beer_id"
    t.index ["recipe_id"], name: "index_pairings_on_recipe_id"
  end

  create_table "recipe_categories", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "recipes", force: :cascade do |t|
    t.string "name", null: false
    t.text "description"
    t.string "image_url"
    t.integer "prep_time"
    t.integer "cook_time"
    t.string "difficulty"
    t.text "chef_notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "breweries_beers", "beer_styles"
  add_foreign_key "breweries_beers", "breweries"
  add_foreign_key "favorites", "users"
  add_foreign_key "flavor_profiles", "beer_styles"
  add_foreign_key "flavor_profiles", "recipe_categories"
  add_foreign_key "ingredients", "recipes"
  add_foreign_key "pairings", "breweries_beers"
  add_foreign_key "pairings", "recipes"
end
