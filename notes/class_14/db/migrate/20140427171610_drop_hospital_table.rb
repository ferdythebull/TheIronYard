class DropHospitalTable < ActiveRecord::Migration
  def change
    drop_table :hospital_tables
  end
end
