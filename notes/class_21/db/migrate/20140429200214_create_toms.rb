class CreateToms < ActiveRecord::Migration
  def change
    create_table :toms do |t|

      t.timestamps
    end
  end
end
