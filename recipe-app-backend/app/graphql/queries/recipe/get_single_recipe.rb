module Queries::Recipe
    class GetSingleRecipe < Queries::BaseQuery
        description "Get single recipe by ID"

        argument :id, ID, required: true

        type Types::RecipeType, null: false

        def resolve(id:)
            Recipe.find(id)
        end 
    end
end