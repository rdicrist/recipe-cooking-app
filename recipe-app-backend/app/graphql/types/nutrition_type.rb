# frozen_string_literal: true

module Types
  class NutritionType < Types::BaseObject
    field :id, ID, null: false
    field :calories, Integer
    field :protein, Integer
    field :carbs, Integer
    field :fat, Integer
    field :weight, Integer
    field :recipe_id, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    field :recipe, Types::RecipeType
    field :category, Types::CategoryType
  end
end
