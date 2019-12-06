class AddCarIdTestDrive < ActiveRecord::Migration[6.0]
  def change 
    add_column :test_drives, :car_id, :integer  
  end
end
