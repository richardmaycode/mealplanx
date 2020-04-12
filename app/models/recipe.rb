class Recipe < ApplicationRecord
  enum meal: [:any, :breakfast, :lunch, :dinner, :snack, :dessert]
  enum cooking_length: [:short, :medium, :long]

  belongs_to :cuisine
end
