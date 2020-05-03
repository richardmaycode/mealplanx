Meal.create(name: "Breakfast")
Meal.create(name: "Lunch")
Meal.create(name: "Dinner")
Meal.create(name: "Other")

Cuisine.create(name:"American")
Cuisine.create(name:"Mexican")
Cuisine.create(name:"Asian")
Cuisine.create(name:"Italian")

User.create(username: "twiggy", servings_needed: 2)

# Breakfast recipes
Recipe.create(name: 'Pancakes', base: 'Bread', cuisine_id: 1, servings: 2, baby_friendly: true, cooking_length: 1, meal_id: 1)
Recipe.create(name: 'Biscuits and Gravy', base: 'Bread', cuisine_id: 1, servings: 4, baby_friendly: false, cooking_length: 2, meal_id: 1)
Recipe.create(name: 'Waffles', base: 'Bread', cuisine_id: 1, servings: 2, baby_friendly: true, cooking_length: 1, meal_id: 1)
Recipe.create(name: 'French Toast', base: 'Bread', cuisine_id: 1, servings: 4, baby_friendly: true, cooking_length: 1, meal_id: 1)
Recipe.create(name: 'Eggs and Bacon', base: 'Eggs', cuisine_id: 1, servings: 2, baby_friendly: true, cooking_length: 1, meal_id: 1)

# Dinner recipes
recipe = Recipe.create!(name: 'Shepherd’s pie', base: 'Beef', cuisine_id: 1, servings: 4, baby_friendly: true, cooking_length: 0, meal_id: 3)

#ingredients
recipe.ingredients.create(name: "beef", amount: 1.0, measure: "pound")
recipe.ingredients.create(name: "mashed potatoes", amount: 2, measure: 'cup')
recipe.ingredients.create(name: 'sweet corn', amount: 8.75, measure: 'ounce')
recipe.ingredients.create(name: 'colby jack cheese', amount: 1, measure: 'cup')

#instructions
recipe.instructions.create(detail: "Brown the beef", step: 1)
recipe.instructions.create(detail: "Make the mashed potatoes", step: 2)
recipe.instructions.create(detail: "Put the mashed potatoes, the beef, and corn in a glass thing. Top with cheese.", step: 3)
recipe.instructions.create(detail: "Microwave for 4 minutes", step: 4)

Recipe.create(name: 'Roast', base: 'Beef', cuisine_id: 1, servings: 5, baby_friendly: false, cooking_length: 2, meal_id: 3)
Recipe.create(name: 'Meatballs and zoodles', base: 'Beef', cuisine_id: 4, servings: 4, baby_friendly: false, cooking_length: 1, meal_id: 3)
Recipe.create(name: 'BBQ meatloaf', base: 'Beef', cuisine_id: 1, servings: 4, baby_friendly: false, cooking_length: 1, meal_id: 3)
Recipe.create(name: 'Beef stroganoff ', base: 'Beef', cuisine_id: 1, servings: 5, baby_friendly: true, cooking_length: 0, meal_id: 3)
Recipe.create(name: 'Cowboy casserole', base: 'Beef', cuisine_id: 1, servings: 5, baby_friendly: true, cooking_length: 2, meal_id: 3)
Recipe.create(name: 'Crockpot pulled pork', base: 'Pork', cuisine_id: 1, servings: 4, baby_friendly: false, cooking_length: 2, meal_id: 3)
Recipe.create(name: 'Beef and broc', base: 'Beef', cuisine_id: 3, servings: 3, baby_friendly: false, cooking_length: 0, meal_id: 3)
Recipe.create(name: 'Chicken terriyaki', base: 'Chicken', cuisine_id: 3, servings: 3, baby_friendly: false, cooking_length: 0, meal_id: 3)
Recipe.create(name: 'Hawaiian pineapple chicken', base: 'Chicken', cuisine_id: 3, servings: 4, baby_friendly: false, cooking_length: 1, meal_id: 3)
Recipe.create(name: 'Chicken cordon bleu', base: 'Chicken', cuisine_id: 4, servings: 2, baby_friendly: false, cooking_length: 1, meal_id: 3)
Recipe.create(name: 'Pesto chicken and veggies', base: 'Chicken', cuisine_id: 4, servings: 4, baby_friendly: false, cooking_length: 0, meal_id: 3)
Recipe.create(name: 'Herb chicken', base: 'Chicken', cuisine_id: 4, servings: 2, baby_friendly: false, cooking_length: 0, meal_id: 3)
Recipe.create(name: 'Chicken sausage and veggie skillet', base: 'Chicken', cuisine_id: 1, servings: 4, baby_friendly: true, cooking_length: 1, meal_id: 3)
Recipe.create(name: 'Chicken with brussel sprouts/apples', base: 'Chicken', cuisine_id: 1, servings: 2, baby_friendly: false, cooking_length: 0, meal_id: 3)
Recipe.create(name: 'Creamy chicken casserole', base: 'Chicken', cuisine_id: 1, servings: 5, baby_friendly: false, cooking_length: 1, meal_id: 3)
Recipe.create(name: 'Lemon pepper chicken', base: 'Chicken', cuisine_id: 1, servings: 2, baby_friendly: false, cooking_length: 1, meal_id: 3)
Recipe.create(name: 'Chicken marsala', base: 'Chicken', cuisine_id: 1, servings: 2, baby_friendly: false, cooking_length: 0, meal_id: 3)
Recipe.create(name: 'Spicy chicken and rice', base: 'Chicken', cuisine_id: 1, servings: 5, baby_friendly: true, cooking_length: 1, meal_id: 3)
Recipe.create(name: 'Taco casserole', base: 'Beef', cuisine_id: 2, servings: 4, baby_friendly: false, cooking_length: 0, meal_id: 3)
Recipe.create(name: 'Tostadas', base: 'Meatless', cuisine_id: 2, servings: 2, baby_friendly: false, cooking_length: 1, meal_id: 2)
Recipe.create(name: 'Tacos', base: 'Beef', cuisine_id: 2, servings: 3, baby_friendly: true, cooking_length: 0, meal_id: 3)
Recipe.create(name: 'Avocado quesadillas', base: 'Beef', cuisine_id: 2, servings: 3, baby_friendly: false, cooking_length: 1, meal_id: 2)
Recipe.create(name: 'Crispy black bean tacos', base: 'Meatless', cuisine_id: 2, servings: 3, baby_friendly: true, cooking_length: 0, meal_id: 2)
Recipe.create(name: 'Tex mex sweet potatoes', base: 'Meatless', cuisine_id: 2, servings: 5, baby_friendly: false, cooking_length: 1, meal_id: 3)
Recipe.create(name: 'Lemon chicken linguini', base: 'Chicken', cuisine_id: 4, servings: 2, baby_friendly: false, cooking_length: 0, meal_id: 3)
Recipe.create(name: 'Chicken parmasean skillet', base: 'Chicken', cuisine_id: 4, servings: 5, baby_friendly: true, cooking_length: 1, meal_id: 3)
Recipe.create(name: 'Pesto chicken pasta', base: 'Chicken', cuisine_id: 4, servings: 5, baby_friendly: true, cooking_length: 2, meal_id: 3)
Recipe.create(name: 'Ham and cheese tortellini', base: 'Pork', cuisine_id: 4, servings: 4, baby_friendly: false, cooking_length: 1, meal_id: 3)
Recipe.create(name: 'Quinoa red bean chili', base: 'Meatless', cuisine_id: 1, servings: 5, baby_friendly: true, cooking_length: 2, meal_id: 3)

all_recipes ||= [] 
Recipe.all.each do |r|
  all_recipes << r.id
end

user = User.first

user.update(recipe_ids: all_recipes)
UsedRecipe.create(date_used: Time.now - 2.days, recipe: Recipe.find(6), user: user)

favs = [2, 6, 7, 11, 17, 18, 21, 24, 32, 33]

favs.each do |f|
  FavoriteRecipe.create(user: user, recipe_id: f)
end

days = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]

days.each do |d|
  dbp = DayBlockPref.create( meals_to_plan: 0, day: d, user: user)
  Meal.all.each_with_index do |m, i|
    if i != 2 
      dbp.plan_prefs.create(meal: m, day_block_pref: dbp, is_active: false, cooking_length: nil)
    else
      dbp.plan_prefs.create(meal: m, day_block_pref: dbp, is_active: true, cooking_length: 1)
    end
  end
end