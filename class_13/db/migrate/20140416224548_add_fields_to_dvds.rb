class AddFieldsToDvds < ActiveRecord::Migration
  def change

    add_column :dvds, :year, :string
    add_column :dvds, :genre, :string
    add_column :dvds, :director, :string
    add_column :dvds, :star, :string
    add_column :dvds, :writer, :string
    add_column :dvds, :description, :text

  end
end
