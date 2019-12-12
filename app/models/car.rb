class Car < ApplicationRecord
    belongs_to :dealership # a car has a attr called dealership id 
    has_many :test_drives  # a car can be taken on many testdrives 
    has_many :users, through: :test_drives # you cant have a testdrive if you dont have a car 

    scope :small_cyl, -> {where("cylinders < ?", 5) }
    
end
