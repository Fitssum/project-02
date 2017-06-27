class Bike < ApplicationRecord
  belongs_to :station
  has_many :userbikes
  has_many :users, through: :userbikes
  # You should also validate uniqueness of serial numbers since they are unique identifiers
  validates :serial_no, :bike_type, :model, {presence: true}
end
