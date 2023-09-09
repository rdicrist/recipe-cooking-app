# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

require 'faker'

5.times do
    category = Category.create!(
        name: Faker::Food.unique.ethnic_category,
        description: Faker::Food.description
    )

    5.times do
        recipe = Recipe.create!(
            name: Faker::Food.unique.dish,
            ingredients: Faker::Food.ingredient,
            steps: Faker::Food.description,
            category: category
        )

        nutrition = Nutrition.create!(
            calories: rand(100..500),
            protein: rand(5..15),
            carbs: rand(5..15),
            fat: rand(5..15),
            weight: rand(100..500),
            recipe: recipe
        )
    end 
end

p "Categories: #{Category.count}, Recipes: #{Recipe.count}, Nutritions: #{Nutrition.count}"
