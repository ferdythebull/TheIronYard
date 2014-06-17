class RemoveColumnsFromShelters < ActiveRecord::Migration
  def change
    remove_column :shelters, :distance
    remove_column :shelters, :user_id
  end
end
