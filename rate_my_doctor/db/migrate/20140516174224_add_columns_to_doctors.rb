class AddColumnsToDoctors < ActiveRecord::Migration
  def change
    add_column :doctors, :sex, :string
    add_column :doctors, :university, :string
  end
end
