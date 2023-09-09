# frozen_string_literal: true

module Types
  class RecipeType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :ingredients, String
    field :steps, String
    field :category_id, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    field :category, Types::CategoryType # might not want this -> just linear?
    field :nutrition, Types::NutritionType
  end
end
