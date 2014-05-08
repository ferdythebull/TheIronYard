class Assignment < ActiveRecord::Base
  has_many :submissions, :dependent => :destroy
  belongs_to :course
  belongs_to :user
  has_many :comments, as: :commentable, :dependent => :destroy
  accepts_nested_attributes_for :submissions
  accepts_nested_attributes_for :comments
end
