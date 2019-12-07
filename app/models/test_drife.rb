class TestDrife < ApplicationRecord
  belongs_to :user
  belongs_to :car
  #whats going on here look dow ask someone if this check out 
  has_many :dealerships, through: :cars 

  validates :test_drive_date, presence: true 
end
