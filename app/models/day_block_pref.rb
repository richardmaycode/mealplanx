# frozen_string_literal: true

class DayBlockPref < ApplicationRecord
  belongs_to :user
  has_many :plan_prefs
  has_many :active_plan_prefs, -> { active }, class_name: "PlanPref"

  enum meals_to_plan: [:dinner_only, :dinner_and_lunch, :dinner_lunch_breakfast, :other, :no_meals]
end
