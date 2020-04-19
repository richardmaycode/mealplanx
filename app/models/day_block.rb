class DayBlock < ApplicationRecord
  belongs_to :week_block
  has_many :plans
end
