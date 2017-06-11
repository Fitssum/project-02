class Bike < ApplicationRecord
  belongs_to :station
  has_many :userbikes
  has_many :users, through: :userbikes
end
