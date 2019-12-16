class Car < ApplicationRecord
    belongs_to :dealership # a car has a attr called dealership id 
    has_many :test_drives  # a car can be taken on many testdrives 
    has_many :users, through: :test_drives # you cant have a testdrive if you dont have a car 

    scope :small_cyl, -> {where("cylinders < ?", 5) } #this is where we get small_cyl and here is where we find out 
    # what it means. each car has a dealership and thoes cars have stats, one of thoes stats is cylinders. the cylinder is an
    # integer. with that varible cylinders Im checking if that car has less than five cylinders. 
    
    
end
