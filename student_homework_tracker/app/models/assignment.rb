class Assignment < ActiveRecord::Base
  has_many :submissions, :dependent => :destroy
  belongs_to :course
  has_many :users, through: :submissions
  has_many :comments, as: :commentable, :dependent => :destroy
  accepts_nested_attributes_for :submissions, allow_destroy: true
end
