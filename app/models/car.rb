class Car < ApplicationRecord
    belongs_to :user 
    has_many :dealerships
    has_many test_drives, through :dealerships
end
