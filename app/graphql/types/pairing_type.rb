# frozen_string_literal: true

module Types
  class PairingType < Types::BaseObject
    field :id, ID, null: false
    field :recommendation_note, String, null: true
    field :rating, Integer, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    # Fields for the associated breweries_beer and recipe
    field :breweries_beer, Types::BreweryBeerType, null: false
    field :recipe, Types::RecipeType, null: false
  end
end
