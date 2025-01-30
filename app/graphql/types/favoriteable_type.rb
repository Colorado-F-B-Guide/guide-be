# frozen_string_literal: true

module Types
  class FavoriteableType < Types::BaseObject
    possible_types Types::BeerStyleType, Types::RecipeType
    #add more types above as app grows

    description "The type of object that can be favorited"
  end
end
