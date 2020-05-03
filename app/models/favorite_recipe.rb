# frozen_string_literal: true

class FavoriteRecipe < ApplicationRecord
  belongs_to :user
  belongs_to :recipe
end
