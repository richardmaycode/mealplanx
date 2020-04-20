# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Cuisine.create(name:"American")
Cuisine.create(name:"Mexican")
Cuisine.create(name:"Chinese")
Cuisine.create(name:"Italian")

User.create(username: "twiggy")

Recipe.create(name: "Shepards Pie", meal: 3, base: "Beef", cuisine_id: 1, leftovers: 2, cooking_length: 0, baby_friendly: true, last_used: Time.now - 24.days)

Recipe.create(name: "Tacos", meal: 3, base: "Beef", cuisine_id: 2, leftovers: 0, cooking_length: 0, baby_friendly: false, last_used: Time.now - 14.days)

Recipe.create(name: "Roasted Pesto Chicken and Veggies", meal: 3, base: "Chicken", cuisine_id: 1, leftovers: 2, cooking_length: 1,baby_friendly: false, last_used: Time.now - 12.days)

Recipe.create(name: "Quinou Chili", meal: 3, base: "Veggie", cuisine_id: 1, leftovers: 2, cooking_length: 2,baby_friendly: true, last_used: Time.now - 2.days)

Recipe.create(name: "Beef Stroganoff", meal: 3, base: "Beef", cuisine_id: 1, leftovers: 2, cooking_length: 0, baby_friendly: true, last_used: Time.now - 4.days)

Recipe.create(name: "Quesadilla", meal: 3, base: "Cheese", cuisine_id: 2, leftovers: 0, baby_friendly: true, last_used: Time.now - 2.days)

Recipe.create(name: "Beef and Broccoli", meal: 3, base: "Beef", cuisine_id: 3, leftovers: 2, cooking_length: 0, baby_friendly: false, last_used: Time.now - 6.days)

Recipe.create(name: "Cowboy Casarole", meal: 3, base: "Beef", cuisine_id: 3, leftovers: 2, cooking_length: 2, baby_friendly: true, last_used: Time.now - 10.days)

Recipe.create(name: "Creamy Chicken Casarole", meal: 3, base: "Chicken", cuisine_id: 3, leftovers: 2, cooking_length: 1, baby_friendly: false, last_used: Time.now - 9.days)

User.first.update(recipe_ids: [1, 2, 3, 4, 5, 6, 7, 8, 9], last_meal: 1)
favs = [1, 3, 6, 7]
favs.each do |f|
  FavoriteRecipe.create(user_id: 1, recipe_id: f)
end