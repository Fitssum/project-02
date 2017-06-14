class Station < ApplicationRecord
  has_many :bikes
  validates :station_name, :location, :photo_url, {presence: true}
end
