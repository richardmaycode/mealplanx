class DayBlock < ApplicationRecord
  belongs_to :week_block
  has_many :plans
  has_many :recipes, through: :plans
  has_and_belongs_to_many :meals


end
