class CreateAnimalGroups < ActiveRecord::Migration
  def change
    create_table :animal_groups do |t|

      t.integer :animal_group_type
      t.text :description
      t.timestamps
    end
  end
end
