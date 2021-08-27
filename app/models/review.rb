class Review < ApplicationRecord
  belongs_to :booking
  belongs_to :user
  validates :content, presence: true, length: { minimum: 6 }
  validates :rating, numericality: { only_integer: true, greater_than_or_equal_to: 1, less_than_or_equal_to: 5 }
  validates_uniqueness_of :user_id, :scope => :booking_id
end
