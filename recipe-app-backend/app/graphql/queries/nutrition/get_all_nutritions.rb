module Queries::Nutrition
    class GetAllNutritions < Queries::BaseQuery
        description "Get all nutritions"

        type [Types::NutritionType], null: false

        def resolve
            Nutrition.all
        end 
    end
end