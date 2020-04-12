class Meal < ApplicationRecord
  scope :dinner_meals, -> { where(meal_time: "Dinner")}
  def sort_score
    score = 100
    score = score + (Time.now.to_date - last_used).to_i * 10
    score += baby_mod
    score += leftover_mod
    score += meal_type_mod
    return score
  end

  def baby_mod
    mod = 0
    mod += 50 unless !baby_friendly
    return mod
  end

  def leftover_mod
    prev_leftover = 2
    mod = 0
    mod += prev_leftover * -50 unless leftovers == 0
    return mod
  end

  def meal_type_mod
    prev_meal_type = "American"
    mod = 0
    mod = -50 unless meal_type != prev_meal_type
    return mod
  end

  def build_meal_array
    meals_array ||= Array.new

    Meal.dinner_meals.each do |m|
      hash = {}
      hash[:id] = m.id
      hash[:name] = m.name
      hash[:score] = m.sort_score
      hash[:base] = m.base
      meals_array << hash
    end
    meals_array.sort_by!{ |hsh| -hsh[:score] }
    return meals_array
  end

  def pick_meal(listOfMeals)
    return listOfMeals[2]
  end
end
