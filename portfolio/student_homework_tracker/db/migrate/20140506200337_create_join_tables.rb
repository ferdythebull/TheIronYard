class CreateJoinTables < ActiveRecord::Migration
  def change
    create_table :join_tables do |t|

      t.timestamps
    end
  end
end
