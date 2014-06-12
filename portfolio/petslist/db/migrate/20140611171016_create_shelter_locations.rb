class CreateShelterLocations < ActiveRecord::Migration
  def change
    create_table :shelter_locations do |t|
      t.integer :shelter_id
      t.integer :location_id
      t.timestamps
    end
  end
end
