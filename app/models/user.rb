class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  mount_uploader :avatar, AvatarUploader
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable



  has_many :check_ins, dependent: :destroy
  has_many :redemptions, dependent: :destroy
  has_many :restaurants, through: :check_ins
  has_many :redemptions
  has_many :offers, through: :redemptions
  has_many :reviews
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true






end
