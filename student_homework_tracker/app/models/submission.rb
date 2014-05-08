class Submission < ActiveRecord::Base
  belongs_to :assignment
  has_many :comments, as: :commentable, :dependent => :destroy
  belongs_to :user
  accepts_nested_attributes_for :comments
end
