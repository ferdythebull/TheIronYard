class AddWorkflowToPatients < ActiveRecord::Migration
  def change
    add_column :patients, :workflow, :string
  end
end
