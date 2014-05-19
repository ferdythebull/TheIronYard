class AddStuffToTopics < ActiveRecord::Migration
  def change
    add_column :posts, :user_id, :integer
    add_column :topics, :user_id, :integer
  end
end
