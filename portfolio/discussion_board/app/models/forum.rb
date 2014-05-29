class Forum < ActiveRecord::Base
  belongs_to :user
  has_many :topics, :dependent => :destroy

  def most_recent_post
    Topic.where(forum_id: self.id).first
  end

end
