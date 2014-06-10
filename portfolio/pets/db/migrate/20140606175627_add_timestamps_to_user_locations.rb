class AddTimestampsToUserLocations < ActiveRecord::Migration
  def change
    add_column :users_locations, :created_at, :datetime
    add_column :users_locations, :updated_at, :datetime
  end
end
