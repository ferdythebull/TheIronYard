class Assignment < ActiveRecord::Base
  has_many :submissions
  belongs_to :course
  belongs_to :user
  has_many :comments, as: :commentable
end
