class EditBirthdayFieldsInUser < ActiveRecord::Migration
  def change
    remove_column :users, :birthday_month, :string
    remove_column :users, :birthday_day, :string
    remove_column :users, :birthday_year, :string
    add_column :users, :birthday, :string
  end
end
