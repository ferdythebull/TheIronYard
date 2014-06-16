class CreateBreeds < ActiveRecord::Migration
  def change
    create_table :breeds do |t|
      t.string :name
      t.text :description
      t.integer :species_id

      t.timestamps
    end
  end
end
