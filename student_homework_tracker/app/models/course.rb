class Course < ActiveRecord::Base
  has_many :assignments, :dependent => :destroy
  has_many :join_tables
  has_many :users, through: :join_tables
  belongs_to :location
  accepts_nested_attributes_for :assignments
  accepts_nested_attributes_for :users
end
