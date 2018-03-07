class Restaurant < ApplicationRecord
  has_many :check_ins
  has_many :users, through: :check_ins
  has_many :reviews, dependent: :destroy


  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  include PgSearch
  pg_search_scope :search_by_any_word,
    against: [ :name, :cuisine, :address, :location ],
    using: {
      tsearch: { prefix: true, any_word: true }

    }
    pg_search_scope :search_all_words,
      against:  [ :name, :cuisine, :address, :location ]


end
