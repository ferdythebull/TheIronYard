class AddColumnsToAssignments < ActiveRecord::Migration
  def change
    add_column :assignments, :course_id, :integer
    add_column :assignments, :name, :string
    add_column :assignments, :description, :text
  end
end
