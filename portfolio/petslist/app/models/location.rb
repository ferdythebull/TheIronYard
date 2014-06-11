class Location < ActiveRecord::Base
  has_many :user_locations
  has_many :users, through: :user_locations

  geocoded_by :full_address
  after_validation :geocode, if: :address_changed?

end
