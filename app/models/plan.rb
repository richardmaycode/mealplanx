class Plan < ApplicationRecord
  belongs_to :recipe

  enum meal: [:any, :breakfast, :lunch, :dinner, :snack, :dessert]
end
