class Meal < ApplicationRecord
  has_and_belongs_to_many :day_blocks
  has_many :plans
end
