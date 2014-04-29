class AddToDoctors < ActiveRecord::Migration
  def change
    add_column :doctors, :name, :string
    add_column :doctors, :doctorable_id, :integer
    add_column :doctors, :doctorable_type, :string
  end
end
