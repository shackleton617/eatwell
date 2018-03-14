class Favorite < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant
  validates :user_id, uniqueness: {scope: :restaurant_id}

  def self.user_like_restaurant?(restaurant, user)
    Favorite.where(user: user, restaurant: restaurant).empty?
  end


end
