class User < ApplicationRecord
  has_many :services
  has_many :bookings
  has_many :reviews
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  validates :email, format: { with: /\A.*@.*\.com\z/ }, presence: true, uniqueness: true
  has_one_attached :photo
  # Geocoder
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
