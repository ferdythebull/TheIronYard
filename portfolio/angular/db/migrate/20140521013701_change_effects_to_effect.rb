class ChangeEffectsToEffect < ActiveRecord::Migration
  def change
    rename_column :spells, :effects, :effect
  end
end
