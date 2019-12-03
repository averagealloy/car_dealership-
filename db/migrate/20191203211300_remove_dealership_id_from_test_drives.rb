class RemoveDealershipIdFromTestDrives < ActiveRecord::Migration[6.0]
  def change

    remove_column :test_drives, :dealership_id, :integer
  end
end
