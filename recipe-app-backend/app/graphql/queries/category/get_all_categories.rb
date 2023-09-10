module Queries::Category
    class GetAllCategories < Queries::BaseQuery
        description "Get all categories"

        type [Types::CategoryType], null: false

        def resolve
            Category.all
        end 
    end
end