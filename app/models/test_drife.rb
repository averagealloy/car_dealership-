class TestDrife < ApplicationRecord
  belongs_to :user
  belongs_to :car
  has_many :dealerships, through: :cars 

  validates :test_drive_date, presence: true
end
