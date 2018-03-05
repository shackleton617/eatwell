class Offer < ApplicationRecord
  has_many :redemptions
  has_many :users, through: :redemptions
end
