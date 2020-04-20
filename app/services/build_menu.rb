# frozen_string_literal: true

# builds menu for specified uses and week
class BuildMenu
  def initialize(user, days)
    @user = user
    @days = days
    @recipes = @user.recipes.where(meal: 3)
    @last_meal = Recipe.find(@user.last_meal)
    @used_ids ||= []
    @plans_planned = 0
  end

  def execute
    @days.each do |d|
      recipe = score_and_return_recipe
      create_plan(d, recipe)
      @recipes = Recipe.where(meal: 3).where.not(id: @used_ids)
      @plans_planned += 1
    end
    return true if @plans_planned == @days.count

    false
  end

  def create_plan(day_block, recipe)
    Plan.create!(meal: day_block.meal, recipe_id: recipe, day_block: day_block)
    Recipe.find(recipe).update(last_used: day_block.scheduled)
    @last_meal = Recipe.find(recipe)
    @used_ids << recipe
  end

  def score_and_return_recipe
    scores ||= []
    @recipes.each do |r|
      hash = {}
      hash[:id] = r.id
      hash[:score] = r.sort_score(@last_meal)
      scores << hash
    end
    scores.sort_by! { |hsh| -hsh[:score] }
    recipe_id = scores[0][:id]
    recipe_id
  end
end
