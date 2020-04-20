class DayBlock < ApplicationRecord
  belongs_to :week_block
  has_many :plans
  has_many :recipes, through: :plans
  enum meal: [:any, :breakfast, :lunch, :dinner, :snack, :dessert]
end
