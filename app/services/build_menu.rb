class BuildMenu
  def initialize(user, days)
    @user = user
    @days = days
    @recipes = @user.recipes.where(meal: 3)
    @last_meal = Recipe.find(@user.last_meal)
  end

  def execute
    plans ||= Array.new
    used_ids ||= Array.new
    @days.each do |d|
      recipe = score_and_return_recipe
      plan = Plan.create!(meal: d.meal, recipe_id: recipe, day_block: d)  
      Recipe.update(last_used: d.scheduled)
      used_ids << recipe
      plans << plan
      @recipes = Recipe.where(meal: 3).where.not(id: used_ids)
    end
    puts plans
    return true if plans.length() == @days.count
    false
    # planned_meals ||= Array.new
    # used_ids ||= Array.new
    # @count.times do |i|
    #   scores = get_scores
    #   scores.sort_by!{ |hsh| -hsh[:score] }
    #   created_plan = Plan.create!(date: Time.now + i.days, meal: 4, recipe_id: scores[0][:id])
    #   Recipe.find(scores[0][:id]).update!(last_used: Time.now + i.days)
    #   @last_meal = created_plan.recipe
    #   planned_meals << @last_meal.name
    #   used_ids << scores[0][:id]
    #   @recipes = Recipe.where(meal: @meal).where.not(id: used_ids)
    # end
    # return planned_meals
  end

  def score_and_return_recipe
    scores ||= Array.new
      @recipes.each do |r|
      hash = {}
      hash[:id] = r.id
      hash[:score] = r.sort_score(@last_meal)
      scores << hash
    end
    scores.sort_by! { |hsh| -hsh[:score] }
    recipe_id = scores[0][:id]
    return recipe_id
  end
end
