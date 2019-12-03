class TestDrive < ApplicationRecord
  has_many :users
  has_many :cars
  has_many :dealerships through: :cars 
end
