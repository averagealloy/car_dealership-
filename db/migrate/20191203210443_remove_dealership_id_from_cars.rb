class RemoveDealershipIdFromCars < ActiveRecord::Migration[6.0]
  def change

    remove_column :cars, :dealership_id, :integer
  end
end
