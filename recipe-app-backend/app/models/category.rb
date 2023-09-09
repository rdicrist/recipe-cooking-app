class Category < ApplicationRecord
    has_many :recipes 
    has_many :nutritions, :through => :recipes
end
