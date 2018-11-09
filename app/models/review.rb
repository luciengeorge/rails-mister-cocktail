class Review < ApplicationRecord
  belongs_to :cocktail
  validates :comment, presence: true
  validates :rating, presence: true, inclusion: { in: (1..5) }
end
