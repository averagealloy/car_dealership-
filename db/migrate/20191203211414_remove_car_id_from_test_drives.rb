class RemoveCarIdFromTestDrives < ActiveRecord::Migration[6.0]
  def change

    remove_column :test_drives, :car_id, :integer
  end
end
