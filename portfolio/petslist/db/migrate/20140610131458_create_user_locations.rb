class CreateUserLocations < ActiveRecord::Migration
  def change
    create_table :user_locations do |t|
      t.integer "user_id"
      t.integer "location_id"
      t.timestamps
    end

    remove_column :shelters, :address
    remove_column :shelters, :latitude
    remove_column :shelters, :longitude

  end
end
