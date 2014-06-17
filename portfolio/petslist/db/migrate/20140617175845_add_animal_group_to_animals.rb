class AddAnimalGroupToAnimals < ActiveRecord::Migration
  def change
    add_column :animals, :animal_group, :string
    add_column :animals, :patterns, :string
  end
end
