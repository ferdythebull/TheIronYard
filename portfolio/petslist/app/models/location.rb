class Location < ActiveRecord::Base
  has_many :user_locations
  has_many :users, through: :user_locations
  
  def full_address
    [address, city, state, zip_code].compact.join(', ')
  end

  geocoded_by :full_address
  after_validation :geocode, if: :address_changed?
end
