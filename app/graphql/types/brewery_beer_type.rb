# frozen_string_literal: true

module Types
  class BreweryBeerType < Types::BaseObject
    field :id, ID, null: false
    field :brewery_id, Integer, null: false
    field :beer_style_id, Integer, null: false
    field :seasonal, Boolean, null: false
    field :price, Float, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    # Associations
    field :brewery, Types::BreweryType, null: false
    field :beer_style, Types::BeerStyleType, null: false
  end
end
