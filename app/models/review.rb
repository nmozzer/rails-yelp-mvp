class Review < ApplicationRecord
  RATING = (0..5).freeze
  validates :content, presence: true
  validates :rating, presence: true, numericality: { only_integer: true }
  validates :rating, inclusion: { in: RATING }
  belongs_to :restaurant
end
