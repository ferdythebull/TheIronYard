class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :birthday, :string
    add_column :users, :admin, :boolean
    add_column :users, :user_type, :string
  end
  def self.up
    add_column :users, :admin, :boolean, :default => false
  end
  def self.down
    remove_column :users, :admin
  end
end
