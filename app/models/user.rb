# frozen_string_literal: true

class User < ApplicationRecord
  # Associations
  has_and_belongs_to_many :recipes
  has_many :used_recipes
  has_many :day_block_prefs
  has_many :plan_prefs, through: :day_block_prefs
  has_many :active_plan_prefs, -> { active }, through: :day_block_prefs, source: :plan_prefs
  has_many :inactive_plan_prefs, -> { inactive }, through: :day_block_prefs, source: :plan_prefs
  has_many :favorite_recipes
  has_many :favorites, through: :favorite_recipes, source: :recipe

  def last_meal
    used_recipes.last
  end
end
