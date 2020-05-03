# frozen_string_literal: true

# builds menu for specified uses and week
class BuildMenu
  def initialize(user, days)
    @user = user
    @days = days
    @recipes = @user.recipes.where(meal: 3)
    @last_meal = Recipe.find(@user.last_meal.id)
    @used_ids ||= []
    @plans_planned = 0
    @week_block_meals = @days.first.week_block.meals.count
  end

  def execute
    @days.each do |d|
      d.meals.each do |m|
        @recipes = Recipe.where(meal: m).where.not(id: @used_ids)
        recipe = score_and_return_recipe
        create_plan(d, m, recipe)
        @plans_planned += 1
      end
    end
    return true if @plans_planned == @week_block_meals

    false
  end

  def create_plan(day_block, meal, recipe)
    Plan.create(meal: meal, recipe_id: recipe, day_block: day_block)
    UsedRecipe.create(date_used: day_block.scheduled, recipe_id: recipe, user: @user)
    @last_meal = Recipe.find(recipe)
    @used_ids << recipe
  end

  def score_and_return_recipe
    scores ||= []
    @recipes.each do |r|
      hash = {}
      hash[:id] = r.id
      hash[:score] = r.sort_score(@last_meal, @user)
      scores << hash
    end
    scores.sort_by! { |hsh| -hsh[:score] }
    recipe_id = scores[0][:id]
    # recipe_id
  end
end
