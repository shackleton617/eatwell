class AddRestaurantToFavorite < ActiveRecord::Migration[5.1]
  def change
    add_reference :favorites, :restaurant, foreign_key: true
  end
end
