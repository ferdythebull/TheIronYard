class AddColumnsToLinks < ActiveRecord::Migration
  def change
    add_column :links, :links, :string
    add_column :links, :submission_id, :integer
  end
end
