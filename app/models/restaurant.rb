class Restaurant < ApplicationRecord
  has_many :check_ins
  has_many :users, through: :check_ins
  has_many :reviews, dependent: :destroy

  def calculate_points
    @points = 0
    @points += 10 if self.has_community
    @points += 10 if self.has_recycling
    @points += 10 if self.has_sourcing

    @points
  end

end


# @points = @restaurant.calculate_points
