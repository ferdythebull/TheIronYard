class CreateJoinTables < ActiveRecord::Migration
  def change
    create_table :join_tables do |t|
      t.integer :patient_id
      t.integer :hospital_id

      t.timestamps
    end
    remove_column :patients, :hospital_id, :integer
  end
end
