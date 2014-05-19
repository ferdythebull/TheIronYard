class AddStuffToSubmissions < ActiveRecord::Migration
  def change
    add_column :submissions, :title, :string
    add_column :submissions, :name, :string
  end
end
