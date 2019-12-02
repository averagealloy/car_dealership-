class TestDrive < ApplicationRecord
  has_many :cars
  has_many :users 
end
