class AddForumIdToTopics < ActiveRecord::Migration
  def change
    add_column :topics, :forum_id, :integer
    add_column :posts, :topic_id, :integer
  end
end
