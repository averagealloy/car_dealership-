class Car < ApplicationRecord
    belongs_to :dealership
    belongs_to :test_drive 
end
