class Location < ActiveRecord::Base
  has_many :courses, :dependent => :destroy
  accepts_nested_attributes_for :courses
end
