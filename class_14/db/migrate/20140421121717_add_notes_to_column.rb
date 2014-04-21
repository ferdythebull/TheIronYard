class AddNotesToColumn < ActiveRecord::Migration
  def change
    # This is how you do a migration
    # first symbol is the table
    # second symbol is the field name
    # third symbol is the type of variable
    add_column :patients, :notes, :string
  end
end
