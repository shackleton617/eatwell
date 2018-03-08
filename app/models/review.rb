class Review < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user
  validates :rating, presence: true, inclusion: { in: [ 1, 2, 3, 4, 5 ], allow_nil: false }
  validates :content, presence: true, length: { minimum: 20 }

end
