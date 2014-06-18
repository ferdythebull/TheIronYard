class ChangeColumnNameInUsers < ActiveRecord::Migration
  def change
    rename_column :users, :my_last_movie, :my_last_meal
  end
end
