class User < ApplicationRecord
  has_many :userbikes
  has_many :users, through: :userbikes
end