class Submission < ActiveRecord::Base
  belongs_to :assignment
  has_many :comments, as: :commentable
  belongs_to :user
end
