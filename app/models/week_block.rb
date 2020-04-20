class WeekBlock < ApplicationRecord
  has_many :day_blocks
  has_many :plans, through: :day_blocks
  has_many :planned_recipes, through: :plans, source: :recipe
  accepts_nested_attributes_for :day_blocks
  
end
