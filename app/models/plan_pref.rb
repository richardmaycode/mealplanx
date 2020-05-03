# frozen_string_literal: true

class PlanPref < ApplicationRecord
  belongs_to :meal
  belongs_to :day_block_pref

  scope :active, -> { where(is_active: true) }
  scope :inactive, -> { where(is_active: false) }

  enum cooking_length: [:short, :medium, :long]
end
