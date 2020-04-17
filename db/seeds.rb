# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Meal.create(name: , meal_time: , base: , meal_type: , leftovers: 2, baby_friendly: , last_used:)
Cuisine.create(name:"American")
Cuisine.create(name:"Mexican")
Cuisine.create(name:"Chinese")
Cuisine.create(name:"Italian")

Recipe.create(name: "Shepards Pie", meal: 4, base: "Beef", cuisine_id: 1, leftovers: 2, cooking_length: 0, baby_friendly: true, is_favorite: true,last_used: Time.now - 24.days)

Recipe.create(name: "Tacos", meal: 4, base: "Beef", cuisine_id: 2, leftovers: 0, cooking_length: 0, baby_friendly: false, is_favorite: false, last_used: Time.now - 14.days)

Recipe.create(name: "Roasted Pesto Chicken and Veggies", meal: 4, base: "Chicken", cuisine_id: 1, leftovers: 2, cooking_length: 1,baby_friendly: false, is_favorite: true, last_used: Time.now - 12.days)

Recipe.create(name: "Quinou Chili", meal: 4, base: "Veggie", cuisine_id: 1, leftovers: 2, cooking_length: 2,baby_friendly: true, is_favorite: false, last_used: Time.now - 2.days)

Recipe.create(name: "Shepards Pie", meal: 4, base: "Beef", cuisine_id: 1, leftovers: 2, cooking_length: 0,baby_friendly: true, is_favorite: true,last_used: Time.now - 4.days)

Recipe.create(name: "Quesadilla", meal: 4, base: "Cheese", cuisine_id: 2, leftovers: 0, baby_friendly: true, last_used: Time.now - 2.days)

Recipe.create(name: "Beef and Broccoli", meal: 4, base: "Beef", cuisine_id: 3, leftovers: 2, cooking_length: 0, baby_friendly: false, last_used: Time.now - 6.days)

Plan.create(date: Time.now, meal: 4, recipe_id: 1)