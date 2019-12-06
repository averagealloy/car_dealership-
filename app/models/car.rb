class Car < ApplicationRecord
    belongs_to :dealership
    has_many :test_drives 
    has_many :users, through: :test_drives 
end
