class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|

      t.string :street
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :phone_number

      t.timestamps
    end
  end
end
