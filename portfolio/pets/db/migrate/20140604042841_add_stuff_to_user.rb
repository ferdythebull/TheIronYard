class AddStuffToUser < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :zip_code, :string
    add_column :users, :birthday_month, :string
    add_column :users, :birthday_day, :string
    add_column :users, :birthday_year, :string
  end
end
