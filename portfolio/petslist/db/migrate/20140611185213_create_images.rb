class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.integer :user_id
      t.integer :animal_id
      t.integer :shelter_id
      t.timestamps
    end
  end
end
