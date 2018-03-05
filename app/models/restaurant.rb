class Restaurant < ApplicationRecord
  has_many :check_ins
  has_many :users
end
