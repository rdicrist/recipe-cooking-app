module Types
  class QueryType < Types::BaseObject
    # category
    field :getAllCategories, resolver: Queries::Category::GetAllCategories
    field :getSingleCategory, resolver: Queries::Category::GetSingleCategory

    # recipe
    field :getAllRecipes, resolver: Queries::Recipe::GetAllRecipes
    field :getSingleRecipe, resolver: Queries::Recipe::GetSingleRecipe

    # nutrition
    field :getAllNutritions, resolver: Queries::Nutrition::GetAllNutritions
    field :getSingleNutrition, resolver: Queries::Nutrition::GetSingleNutrition

  end
end
