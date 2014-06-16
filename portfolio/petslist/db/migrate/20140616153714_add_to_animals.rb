class AddToAnimals < ActiveRecord::Migration
  def change
    add_column :animals, :birthday, :string
    add_column :animals, :personality, :string
    add_column :animals, :color, :string
    add_column :animals, :body_type, :string
    add_column :animals, :trained, :string
    add_column :animals, :sex, :string
    add_column :animals, :size, :string
    add_column :animals, :hair, :string
    add_column :animals, :special_needs, :string
    add_column :animals, :bonded_pair, :string
  end
end
