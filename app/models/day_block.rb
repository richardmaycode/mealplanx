class DayBlock < ApplicationRecord
  belongs_to :week_block
  has_many :plans

  enum meal: [:any, :breakfast, :lunch, :dinner, :snack, :dessert]
end
