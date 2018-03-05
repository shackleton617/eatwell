class Review < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user
  validates :ratings, presence: true
  validates :content, presence: true
end
