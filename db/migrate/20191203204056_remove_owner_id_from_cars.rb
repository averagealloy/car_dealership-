class RemoveOwnerIdFromCars < ActiveRecord::Migration[6.0]
  def change

    remove_column :cars, :owner_id, :integer
  end
end
