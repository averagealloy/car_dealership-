class CreateCars < ActiveRecord::Migration[6.0]
  def change
    create_table :cars do |t|
      t.integer :owner_id
      t.integer :doors
      t.integer :cylinders
      t.string :transmission
      t.string :color
      t.integer :price

      t.timestamps
    end
  end
end
