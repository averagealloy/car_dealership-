class Dealership < ApplicationRecord
    has_many :cars
    has_many :test_drives through: :cars
end
