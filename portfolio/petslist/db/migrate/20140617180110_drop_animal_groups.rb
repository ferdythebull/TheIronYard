class DropAnimalGroups < ActiveRecord::Migration
  def change
    drop_table :animal_groups
  end
end
