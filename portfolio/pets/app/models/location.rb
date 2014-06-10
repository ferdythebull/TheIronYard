class Location < ActiveRecord::Base
  has_many :users_locations
  has_many :users, through: :users_locations
  # attr_accessible :address, :latitude, :longitude

  # turn this into a method for the multiple form columns (street, city, etc)
  # right now it is just doing the address column
  # geocoded_by :address
  # after_validation :geocode, :if => :address_changed?
end
