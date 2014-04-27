class AddColumnsToMedications < ActiveRecord::Migration
  def change
    add_column :medications, :name, :string
    add_column :medications, :description, :string
  end
end
