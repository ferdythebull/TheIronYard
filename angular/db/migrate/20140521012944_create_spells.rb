class CreateSpells < ActiveRecord::Migration
  def change
    create_table :spells do |t|
      t.string :name
      t.text :effects
      t.string :creator

      t.timestamps
    end
  end
end
