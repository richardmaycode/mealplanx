class Plan < ApplicationRecord
  belongs_to :recipe
  belongs_to :meal
  belongs_to :day_block
  has_one :week_block, through: :day_block
  
  enum meal: [:any, :breakfast, :lunch, :dinner, :snack, :dessert]
end
