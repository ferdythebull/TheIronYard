class AddStuffToComments < ActiveRecord::Migration
  def change
    add_column :comments, :user_id, :integer
    add_column :comments, :name, :string
    add_column :comments, :email, :string
  end
end
