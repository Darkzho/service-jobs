class Service < ApplicationRecord
  belongs_to :user
  validates :title, presence: true
  validates :description, presence: true
  validates :category, presence: true, inclusion: { in: ["gasfiteria", "electricidad", "pintura", "carpinteria", "servicio técnico", "limpieza"] }
  validates :price, presence: true
end
