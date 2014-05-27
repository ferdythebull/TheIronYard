class Topic < ActiveRecord::Base
  belongs_to :forum
  belongs_to :user
  has_many :posts, :dependent => :destroy
  has_many :ratings

  def average_rating
    ratings.sum(:score) / ratings.size
  end

end
