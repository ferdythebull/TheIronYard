class AddDescriptionToShelters < ActiveRecord::Migration
  def change
    add_column :shelters, :description, :text
  end
end
