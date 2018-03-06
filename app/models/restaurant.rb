class Restaurant < ApplicationRecord
  has_many :check_ins
  has_many :users, through: :check_ins
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
