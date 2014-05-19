class AddMoreToAssignments < ActiveRecord::Migration
  def change
    add_column :assignments, :user_id, :integer
    add_column :assignments, :due_date, :string
  end
end
