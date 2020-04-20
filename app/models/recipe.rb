class Recipe < ApplicationRecord
  enum meal: [:any, :breakfast, :lunch, :dinner, :snack, :dessert]
  enum cooking_length: [:short, :medium, :long]

  belongs_to :cuisine
  has_and_belongs_to_many :users
  has_many :favorite_recipes
  has_many :favorited_users, through: :favorite_recipes, source: :user
  
  def sort_score(previous_meal)
    base = 100
    score = base + time_bonus + fav_bonus + leftover_mod(previous_meal.leftovers) + cuisine_bonus(previous_meal.cuisine_id) + base_bonus(previous_meal.base)

    return score
  end

  def time_bonus 
    days_since_last_used = (Time.now.to_date - last_used).to_i
    if days_since_last_used.between?(-100, 5) 
      bonus = -5000
    else
      bonus = days_since_last_used * 25
    end
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
      bonus = 5000
    else
      bonus = 0
    end
    return bonus
  end

  def is_favorite
    current_user = User.first
    current_user.favorites.exists?(self.id)
  end
end
