class CreateShelters < ActiveRecord::Migration
  def change
    create_table :shelters do |t|
      t.string "name"
      t.string "address"
      t.string "city"
      t.string "state"
      t.string "zip_code"
      t.string "phone"
      t.string "main_url"
      t.float "latitude"
      t.float "longitude"
      t.integer "distance"
      t.timestamps
    end
  end
end
