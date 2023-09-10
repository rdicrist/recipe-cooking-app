module Queries::Category
    class GetSingleCategory < Queries::BaseQuery
        description "Get single category by ID"

        argument :id, ID, required: true

        type Types::CategoryType, null: false

        def resolve(id:)
            Category.find(id)
        end 
    end
end
