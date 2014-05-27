class Location < ActiveRecord::Base
  has_many :courses, :dependent => :destroy
end
