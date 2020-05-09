# frozen_string_literal: true

class Recipe < ApplicationRecord
  enum cooking_length: [:short, :medium, :long]

  belongs_to :cuisine
  belongs_to :meal
  has_and_belongs_to_many :users
  has_many :ingredients
  has_many :instructions
  has_many :used_recipes
  has_many :favorite_recipes
  has_many :favorited_users, through: :favorite_recipes, source: :user

  #validations
  validates :name, :base, :cooking_length, :servings, presence: true

  # methods
  def sort_score(previous_meal, user)
    base = 100
    score = base + time_bonus + fav_bonus(user) + leftover_mod(previous_meal.leftovers(user), user) + cuisine_bonus(previous_meal.cuisine_id) + base_bonus(previous_meal.base) + baby_bonus
    score
  end

  def baby_bonus
    bonus = baby_friendly ? 50 : 0
    bonus
  end
  
  def time_bonus
    days_since_last_used = (Time.now.to_date - last_used_by_user).to_i
    if days_since_last_used.between?(-100, 5)
      bonus = -5000
    else
      bonus = days_since_last_used * 25
    end
    bonus
  end

  def fav_bonus(user)
    bonus = is_favorite(user) ? 50 : 0
    bonus
  end

  def leftover_mod(prev_leftover, user)
    return 0 if prev_leftover.nil?
    mod = 0
    mod += prev_leftover * -50 unless leftovers(user) == 0
    mod
  end

  def cuisine_bonus(prev_cuisine)
    return 0 if prev_cuisine.nil?
    if prev_cuisine != cuisine_id
      bonus = 500
    else
      bonus = 0
    end
    bonus
  end

  def base_bonus(prev_base)
    return 0 if prev_base.nil?
    if prev_base != base
      bonus = 15000
    else
      bonus = 0
    end
    bonus
  end

  def is_favorite(user)
    user.favorites.exists?(self.id)
  end

  def is_selected(user)
    user.recipes.exists?(self.id)
  end

  def leftovers(user)
    leftover = servings - user.servings_needed
    return leftover unless leftover < 0

    0
  end

  def last_used_by_user
    current_user = User.first
    last_used_record = UsedRecipe.where(user: current_user, recipe: self).first
    date_used = Time.now - 10.days
    if !last_used_record.nil?
      date_used = last_used_record.date_used
    end
    date_used.to_date
  end
end
