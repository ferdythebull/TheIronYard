class AddColumnsToHospitals < ActiveRecord::Migration
  def change
    add_column :hospitals, :name, :string
    add_column :hospitals, :location, :string
  end
end
