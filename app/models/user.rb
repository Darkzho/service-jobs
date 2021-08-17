class User < ApplicationRecord
  has_many :services, dependent: :destroy
  has_many :bookings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
  validates :email, format: { with: /\A.*@.*\.com\z/ }, presence: true, uniqueness: true
  has_one_attached :photo
end
