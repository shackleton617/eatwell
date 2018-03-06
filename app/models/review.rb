class Review < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user
  validates :ratings, presence: true
  validates :content, presence: true, length: { minimum: 20 }
end
