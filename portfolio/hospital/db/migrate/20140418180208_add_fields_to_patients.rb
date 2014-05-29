class AddFieldsToPatients < ActiveRecord::Migration
  def change

    add_column :patients, :age, :string
    add_column :patients, :sex, :string
    add_column :patients, :symptoms, :text

  end
end
