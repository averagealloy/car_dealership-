class RemoveTestDriveidfromcars < ActiveRecord::Migration[6.0]
  def change
    remove_column :cars, :test_drive_id 
  end
end
