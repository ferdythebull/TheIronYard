class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|

      t.string :name
      t.string :birth_date
      t.string :graduation_date
      t.string :nationality

      t.timestamps
    end
  end
end
