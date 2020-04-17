class BuildMenu
  def initialize(meal, count)
    @meal = meal
    @count = count
    @recipes = Recipe.where(meal: @meal)
    @last_meal = Plan.last.recipe
  end

  def execute
    planned_meals ||= Array.new
    used_ids ||= Array.new
    @count.times do |i|
      scores = get_scores
      scores.sort_by!{ |hsh| -hsh[:score] }
      created_plan = Plan.create!(date: Time.now + i.days, meal: 4, recipe_id: scores[0][:id])
      Recipe.find(scores[0][:id]).update!(last_used: Time.now + i.days)
      @last_meal = created_plan.recipe
      planned_meals << @last_meal.name
      used_ids << scores[0][:id]
      @recipes = Recipe.where(meal: @meal).where.not(id: used_ids)
    end
    return planned_meals
  end

  def get_scores
    scores ||= Array.new
    @recipes.each do |r|
      hash = {}
      hash[:id] = r.id
      hash[:name] = r.name
      hash[:score] = r.sort_score(@last_meal)
      scores << hash
    end
    return scores
  end
end
