class AddColumnToCars < ActiveRecord::Migration[6.0]
  def change
    add_column :cars, :dealership_id, :integer
    add_column :cars, :test_drive_id, :integer
  end
end
