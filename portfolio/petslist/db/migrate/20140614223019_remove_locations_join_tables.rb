class RemoveLocationsJoinTables < ActiveRecord::Migration
  def change
    drop_table :animal_locations
    drop_table :shelter_locations
    drop_table :user_locations
  end
end
