class ChangeZipcodeFormatInLocationsTable < ActiveRecord::Migration
  def change
    change_column :locations, :zipCode, :string
  end
end
