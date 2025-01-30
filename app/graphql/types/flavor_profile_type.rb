# frozen_string_literal: true

module Types
  class FlavorProfileType < Types::BaseObject
    field :id, ID, null: false
    field :sweet, Integer, null: true
    field :bitter, Integer, null: true
    field :sour, Integer, null: true
    field :spicy, Integer, null: true
    field :pairing_strength, Integer, null: true
    field :beer_style_id, ID, null: false
    field :recipe_category_id, ID, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    # Can add any other relationships you want to expose
    field :beer_style, Types::BeerStyleType, null: false
    field :recipe_category, Types::RecipeCategoryType, null: false  
  end
end
