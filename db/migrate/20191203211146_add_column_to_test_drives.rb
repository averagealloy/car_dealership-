class AddColumnToTestDrives < ActiveRecord::Migration[6.0]
  def change
    add_column :test_drives, :user_id, :integer
  end
end
