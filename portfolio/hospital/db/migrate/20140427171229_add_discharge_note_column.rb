class AddDischargeNoteColumn < ActiveRecord::Migration
  def change
    add_column :patients, :discharge_note, :text
  end
end
