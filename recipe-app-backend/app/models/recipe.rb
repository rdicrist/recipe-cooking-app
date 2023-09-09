class Recipe < ApplicationRecord
    belongs_to :category
    has_one :nutrition
end
