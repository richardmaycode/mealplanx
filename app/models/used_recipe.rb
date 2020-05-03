# frozen_string_literal: true

class UsedRecipe < ApplicationRecord
  belongs_to :recipe
  belongs_to :user
end
