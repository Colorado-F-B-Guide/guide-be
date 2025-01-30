# frozen_string_literal: true

module Types
  class BeerStyleType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :description, String, null: true
    field :aroma, String, null: true
    field :bitterness, Integer, null: true
    field :alcohol_by_volume, Float, null: true
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
