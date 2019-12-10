class Dealership < ApplicationRecord
    has_many :cars #cant go to a dealerahip if it doesnt have anythiny cars 
    has_many :test_drives, through: :cars # a craigslist testdrive is a bit sketchey so we will just say we need a dealership
end
