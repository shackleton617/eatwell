class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  mount_uploader :avatar, AvatarUploader
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  devise :omniauthable, omniauth_providers: [:facebook]


  has_many :favorites
  has_many :favorite_restaurants, through: :favorites, source: :restaurant
  has_many :check_ins, dependent: :destroy
  has_many :redemptions, dependent: :destroy
  has_many :restaurants, through: :check_ins
  has_many :redemptions
  has_many :offers, through: :redemptions
  has_many :reviews
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true, on: :create


  def find_favorite_by_restaurant(restaurant)
    favorites.find { |f| f.restaurant == restaurant }
  end

  def self.find_for_facebook_oauth(auth)
    user_params = auth.slice(:provider, :uid)
    user_params.merge! auth.info.slice(:email, :first_name, :last_name)
    user_params[:facebook_picture_url] = auth.info.image
    user_params[:token] = auth.credentials.token
    user_params[:token_expiry] = Time.at(auth.credentials.expires_at)
    user_params = user_params.to_h

    user = User.find_by(provider: auth.provider, uid: auth.uid)
    user ||= User.find_by(email: auth.info.email) # User did a regular sign up in the past.
    if user
      user.update(user_params)
    else
      user = User.new(user_params)
      user.password = Devise.friendly_token[0,20]  # Fake password for validation
      user.save
    end

    return user

  end

end
