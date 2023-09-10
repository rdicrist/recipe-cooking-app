module Queries::Nutrition
    class GetSingleNutrition < Queries::BaseQuery
        description "Get single nutrition by ID"

        argument :id, ID, required: true

        type Types::NutritionType, null: false

        def resolve(id:)
            Nutrition.find(id)
        end 
    end
end