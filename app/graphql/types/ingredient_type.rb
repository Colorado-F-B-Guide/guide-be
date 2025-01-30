# frozen_string_literal: true

module Types
  class IngredientType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :amount, Float, null: true
    field :measurement_unit, String, null: true
    field :category, String, null: true
    field :recipe_id, ID, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    # Optional: If you want to expose the associated recipe via a relationship
    field :recipe, Types::RecipeType, null: false
  end
end
