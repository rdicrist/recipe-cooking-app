module Queries::Recipe
    class GetAllRecipes < Queries::BaseQuery
        description "Get all recipes"

        type [Types::RecipeType], null: false

        def resolve
            Recipe.all
        end 
    end
end