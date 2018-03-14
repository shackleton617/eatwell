class Restaurant < ApplicationRecord
  has_many :check_ins, dependent: :destroy
  has_many :users, through: :check_ins
  has_many :reviews, dependent: :destroy


 include PgSearch
  pg_search_scope :search_by_any_word,
    against: [ :name, :cuisine, :address, :location, :description ],
    using: {
      tsearch: { prefix: true, any_word: true }

    }

  pg_search_scope :search_all_words,
    against:  [ :name, :cuisine, :address, :location ]

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  def average_rating
    if reviews != []
      reviews.average(:rating).round(1)
    end
  end


  def calculate_points

    points = 0
    points += 10 if self.has_community
    points += 10 if self.has_recycling
    points += 10 if self.has_sourcing
    points
  end
end

# @points = @restaurant.calculate_points
