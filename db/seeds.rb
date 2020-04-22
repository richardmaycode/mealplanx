# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Meal.create(name: "breakfast")
Meal.create(name: "lunch")
Meal.create(name: "dinner")
Meal.create(name: "dessert")

Cuisine.create(name:"American")
Cuisine.create(name:"Mexican")
Cuisine.create(name:"Asian")
Cuisine.create(name:"Italian")

User.create(username: "twiggy", servings_needed: 2)

# Recipe.create(name: "Shepards Pie", meal: 3, base: "Beef", cuisine_id_id: 1, leftovers: 2, cooking_length: 0, baby_friendly: true, last_used: Time.now - 24.days)

# Recipe.create(name: "Tacos", meal: 3, base: "Beef", cuisine_id_id: 2, leftovers: 0, cooking_length: 0, baby_friendly: false, last_used: Time.now - 14.days)

# Recipe.create(name: "Roasted Pesto Chicken and Veggies", meal: 3, base: "Chicken", cuisine_id_id: 1, leftovers: 2, cooking_length: 1,baby_friendly: false, last_used: Time.now - 12.days)

# Recipe.create(name: "Quinou Chili", meal: 3, base: "Veggie", cuisine_id_id: 1, leftovers: 2, cooking_length: 2,baby_friendly: true, last_used: Time.now - 2.days)

# Recipe.create(name: "Beef Stroganoff", meal: 3, base: "Beef", cuisine_id_id: 1, leftovers: 2, cooking_length: 0, baby_friendly: true, last_used: Time.now - 4.days)

# Recipe.create(name: "Quesadilla", meal: 3, base: "Cheese", cuisine_id_id: 2, leftovers: 0, baby_friendly: true, last_used: Time.now - 2.days)

# Recipe.create(name: "Beef and Broccoli", meal: 3, base: "Beef", cuisine_id_id: 3, leftovers: 2, cooking_length: 0, baby_friendly: false, last_used: Time.now - 6.days)

# Recipe.create(name: "Cowboy Casarole", meal: 3, base: "Beef", cuisine_id_id: 3, leftovers: 2, cooking_length: 2, baby_friendly: true, last_used: Time.now - 10.days)

# Recipe.create(name: "Creamy Chicken Casarole", meal: 3, base: "Chicken", cuisine_id_id: 3, leftovers: 2, cooking_length: 1, baby_friendly: false, last_used: Time.now - 9.days)

# Breakfast recipes
Recipe.create(name: 'Pancakes', base: 'Bread', cuisine_id: 1, servings: 2, baby_friendly: true, cooking_length: 1, meal: 1, last_used: Time.now - 0.days)
Recipe.create(name: 'Biscuits and Gravy', base: 'Bread', cuisine_id: 1, servings: 4, baby_friendly: false, cooking_length: 2, meal: 1, last_used: Time.now - 0.days)
Recipe.create(name: 'Waffles', base: 'Bread', cuisine_id: 1, servings: 2, baby_friendly: true, cooking_length: 1, meal: 1, last_used: Time.now - 0.days)
Recipe.create(name: 'French Toast', base: 'Bread', cuisine_id: 1, servings: 4, baby_friendly: true, cooking_length: 1, meal: 1, last_used: Time.now - 0.days)
Recipe.create(name: 'Eggs and Bacon', base: 'Eggs', cuisine_id: 1, servings: 2, baby_friendly: true, cooking_length: 1, meal: 1, last_used: Time.now - 0.days)

# Dinner recipes
Recipe.create(name: 'Shepherd’s pie', base: 'Beef', cuisine_id: 1, servings: 4, baby_friendly: true, cooking_length: 0, meal: 3, last_used: Time.now - 31.days)
Recipe.create(name: 'Roast', base: 'Beef', cuisine_id: 1, servings: 5, baby_friendly: false, cooking_length: 2, meal: 3, last_used: Time.now - 34.days)
Recipe.create(name: 'Meatballs and zoodles', base: 'Beef', cuisine_id: 4, servings: 4, baby_friendly: false, cooking_length: 1, meal: 3, last_used: Time.now - 30.days)
Recipe.create(name: 'BBQ meatloaf', base: 'Beef', cuisine_id: 1, servings: 4, baby_friendly: false, cooking_length: 1, meal: 3, last_used: Time.now - 29.days)
Recipe.create(name: 'Beef stroganoff ', base: 'Beef', cuisine_id: 1, servings: 5, baby_friendly: true, cooking_length: 0, meal: 3, last_used: Time.now - 2.days)
Recipe.create(name: 'Cowboy casserole', base: 'Beef', cuisine_id: 1, servings: 5, baby_friendly: true, cooking_length: 2, meal: 3, last_used: Time.now - 3.days)
Recipe.create(name: 'Crockpot pulled pork', base: 'Pork', cuisine_id: 1, servings: 4, baby_friendly: false, cooking_length: 2, meal: 3, last_used: Time.now - 5.days)
Recipe.create(name: 'Beef and broc', base: 'Beef', cuisine_id: 3, servings: 3, baby_friendly: false, cooking_length: 0, meal: 3, last_used: Time.now - 13.days)
Recipe.create(name: 'Chicken terriyaki', base: 'Chicken', cuisine_id: 3, servings: 3, baby_friendly: false, cooking_length: 0, meal: 3, last_used: Time.now - 19.days)
Recipe.create(name: 'Hawaiian pineapple chicken', base: 'Chicken', cuisine_id: 3, servings: 4, baby_friendly: false, cooking_length: 1, meal: 3, last_used: Time.now - 20.days)
Recipe.create(name: 'Chicken cordon bleu', base: 'Chicken', cuisine_id: 4, servings: 2, baby_friendly: false, cooking_length: 1, meal: 3, last_used: Time.now - 26.days)
Recipe.create(name: 'Pesto chicken and veggies', base: 'Chicken', cuisine_id: 4, servings: 4, baby_friendly: false, cooking_length: 0, meal: 3, last_used: Time.now - 22.days)
Recipe.create(name: 'Herb chicken', base: 'Chicken', cuisine_id: 4, servings: 2, baby_friendly: false, cooking_length: 0, meal: 3, last_used: Time.now - 12.days)
Recipe.create(name: 'Chicken sausage and veggie skillet', base: 'Chicken', cuisine_id: 1, servings: 4, baby_friendly: true, cooking_length: 1, meal: 3, last_used: Time.now - 7.days)
Recipe.create(name: 'Chicken with brussel sprouts/apples', base: 'Chicken', cuisine_id: 1, servings: 2, baby_friendly: false, cooking_length: 0, meal: 3, last_used: Time.now - 40.days)
Recipe.create(name: 'Creamy chicken casserole', base: 'Chicken', cuisine_id: 1, servings: 5, baby_friendly: false, cooking_length: 1, meal: 3, last_used: Time.now - 1.days)
Recipe.create(name: 'Lemon pepper chicken', base: 'Chicken', cuisine_id: 1, servings: 2, baby_friendly: false, cooking_length: 1, meal: 3, last_used: Time.now - 11.days)
Recipe.create(name: 'Chicken marsala', base: 'Chicken', cuisine_id: 1, servings: 2, baby_friendly: false, cooking_length: 0, meal: 3, last_used: Time.now - 18.days)
Recipe.create(name: 'Spicy chicken and rice', base: 'Chicken', cuisine_id: 1, servings: 5, baby_friendly: true, cooking_length: 1, meal: 3, last_used: Time.now - 24.days)
Recipe.create(name: 'Taco casserole', base: 'Beef', cuisine_id: 2, servings: 4, baby_friendly: false, cooking_length: 0, meal: 3, last_used: Time.now - 16.days)
Recipe.create(name: 'Tostadas', base: 'Meatless', cuisine_id: 2, servings: 2, baby_friendly: false, cooking_length: 1, meal: 2, last_used: Time.now - 8.days)
Recipe.create(name: 'Tacos', base: 'Beef', cuisine_id: 2, servings: 3, baby_friendly: true, cooking_length: 0, meal: 3, last_used: Time.now - 4.days)
Recipe.create(name: 'Avocado quesadillas', base: 'Beef', cuisine_id: 2, servings: 3, baby_friendly: false, cooking_length: 1, meal: 2, last_used: Time.now - 19.days)
Recipe.create(name: 'Crispy black bean tacos', base: 'Meatless', cuisine_id: 2, servings: 3, baby_friendly: true, cooking_length: 0, meal: 2, last_used: Time.now - 22.days)
Recipe.create(name: 'Tex mex sweet potatoes', base: 'Meatless', cuisine_id: 2, servings: 5, baby_friendly: false, cooking_length: 1, meal: 3, last_used: Time.now - 13.days)
Recipe.create(name: 'Lemon chicken linguini', base: 'Chicken', cuisine_id: 4, servings: 2, baby_friendly: false, cooking_length: 0, meal: 3, last_used: Time.now - 55.days)
Recipe.create(name: 'Chicken parmasean skillet', base: 'Chicken', cuisine_id: 4, servings: 5, baby_friendly: true, cooking_length: 1, meal: 3, last_used: Time.now - 2.days)
Recipe.create(name: 'Pesto chicken pasta', base: 'Chicken', cuisine_id: 4, servings: 5, baby_friendly: true, cooking_length: 2, meal: 3, last_used: Time.now - 7.days)
Recipe.create(name: 'Ham and cheese tortellini', base: 'Pork', cuisine_id: 4, servings: 4, baby_friendly: false, cooking_length: 1, meal: 3, last_used: Time.now - 8.days)
Recipe.create(name: 'Quinoa red bean chili', base: 'Meatless', cuisine_id: 1, servings: 5, baby_friendly: true, cooking_length: 2, meal: 3, last_used: Time.now - 10.days)

all_recipes ||= [] 
Recipe.all.each do |r|
  all_recipes << r.id
end

User.first.update(recipe_ids: all_recipes, last_meal: 1)
favs = [2, 6, 7, 11, 17, 18, 21, 24, 32, 33]
favs.each do |f|
  FavoriteRecipe.create(user_id: 1, recipe_id: f)
end