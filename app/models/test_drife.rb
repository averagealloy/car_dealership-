class TestDrife < ApplicationRecord
  belongs_to :user  #\
                        #both of these things belongs to the test drive cant have a test drive with out one of these 
  belongs_to :car   #/
  has_many :dealerships, through: :cars  #a test drive cant have dealership with out cars 
end
