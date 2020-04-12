class BuildMenu
  def initialize(meal)
    @meal = meal
    @recipes = Recipe.where(meal: @meal)
  end

  def execute
    return get_scores
  end

  def get_scores
    scores ||= Array.new
    @recipes.each do |r|
      hash = {}
      hash[:id] = r.id
      hash[:score] = r.sort_score
      scores << hash
    end
    return scores
  end
end