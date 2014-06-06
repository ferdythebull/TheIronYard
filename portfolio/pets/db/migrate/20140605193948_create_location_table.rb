class CreateLocationTable < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :street
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :user_id
    end
  end
end
