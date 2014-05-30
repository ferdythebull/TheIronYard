class Topic < ActiveRecord::Base
  belongs_to :forum
  belongs_to :user
  has_many :posts, :dependent => :destroy
  has_many :ratings

  accepts_nested_attributes_for :posts

  def average_rating
    ratings.sum(:score) / ratings.size
  end

  def last_poster
    self.posts.last.user
  end

end
