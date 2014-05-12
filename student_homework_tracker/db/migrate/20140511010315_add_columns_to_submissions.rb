class AddColumnsToSubmissions < ActiveRecord::Migration
  def change
    add_column :submissions, :workflow_state, :string
    add_column :submissions, :user_id, :integer
    add_column :submissions, :assignment_id, :integer
  end
end
