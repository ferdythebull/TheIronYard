class CreateAnimalLocations < ActiveRecord::Migration
  def change
    create_table :animal_locations do |t|
      t.integer :animal_id
      t.integer :location_id
      t.timestamps
    end
  end
end
