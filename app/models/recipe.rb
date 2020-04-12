class Recipe < ApplicationRecord
  enum meal: [:any, :breakfast, :lunch, :dinner, :snack, :dessert]
  enum cooking_length: [:short, :medium, :long]

  belongs_to :cuisine

  def sort_score
    base = 100
    score = base + time_bonus + fav_bonus + leftover_mod(rand(0..4)) + cuisine_bonus(rand(1..4)) + base_bonus("Chicken")

    return score
  end

  def time_bonus 
    bonus = (Time.now.to_date - last_used).to_i * 10
    return bonus
  end

  def fav_bonus
    bonus = is_favorite ? 50 : 0
    return bonus
  end

  def leftover_mod(prev_leftover)
    mod = 0
    mod += prev_leftover * -50 unless leftovers == 0
    return mod
  end

  def cuisine_bonus(prev_cuisine)
    if prev_cuisine != cuisine_id
      bonus = 500
    else
      bonus = 0
    end
    return bonus
  end

  def base_bonus(prev_base)
    if prev_base != base
      bonus = 500
    else
      bonus = 0
    end
    return bonus
  end
end
