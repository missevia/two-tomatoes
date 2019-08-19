class User < ApplicationRecord
  has_one :chef
  has_many :bookings
  has_many :reviews
end
