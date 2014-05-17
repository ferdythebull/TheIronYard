class DropDoctors < ActiveRecord::Migration
  def change
    drop_table :doctors
  end
end
