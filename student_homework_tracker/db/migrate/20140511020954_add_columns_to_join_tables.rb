class AddColumnsToJoinTables < ActiveRecord::Migration
  def change
    add_column :join_tables, :course_id, :integer
    add_column :join_tables, :user_id, :integer
  end
end
