class Review < ApplicationRecord
  belongs_to :tour_guide

  validates :comment, presence: true
end
