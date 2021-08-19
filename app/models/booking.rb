class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :service
  validates :start_date, presence: true
  #validates :end_date, presence: true
  # geocoder
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
