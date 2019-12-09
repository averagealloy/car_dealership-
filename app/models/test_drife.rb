class TestDrife < ApplicationRecord
  belongs_to :user
  belongs_to :car
  #whats going on here look dow ask someone if this check out 
  has_many :dealerships, through: :cars 

  validates :test_drive_date, presence: true
  
  
  accepts_nested_attributes_for :car

  
  # def test_drive_date= (hash = {})
  #   self.test_drive_date = "#{'test_drive_date(1i)'} , #{'test_drive_date(2i)'} , #{
  #   'test_drive_date(3i)'}"  
  # end 

  # def test_drive_date=(attributes = {})
  #   if attributes[:date].present?
  #     self.car = Car.find_or_create_by(attributes)
  #   end 
  # end 
end
