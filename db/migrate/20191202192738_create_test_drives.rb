class CreateTestDrives < ActiveRecord::Migration[6.0]
  def change
    create_table :test_drives do |t|
      t.integer :car_id
      t.integer :dealership_id
      t.datetime :test_drive_date

      t.timestamps
    end
  end
end
