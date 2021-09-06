class Service < ApplicationRecord
  belongs_to :user
  has_many :bookings, :dependent => :destroy
  has_one_attached :photo
  validates :title, presence: true
  validates :description, presence: true
  validates :category, presence: true, inclusion: { in: ["gasfiteria", "electricidad", "pintura", "carpinteria", "servicio técnico", "limpieza"] }
  validates :price, presence: true
end
