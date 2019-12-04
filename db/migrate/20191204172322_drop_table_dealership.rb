class DropTableDealership < ActiveRecord::Migration[6.0]
  def change
    drop_table :dealerships
  end
end
