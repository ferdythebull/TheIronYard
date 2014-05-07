class Course < ActiveRecord::Base
  has_many :assignments
  has_many :join_tables
  has_many :users, through: :join_tables
  belongs_to :location
end
