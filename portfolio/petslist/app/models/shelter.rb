class Shelter < ActiveRecord::Base
  has_many :animals
  has_many :owners
  has_many :users, through: :owners
  has_many :images, :as => :imageable
  has_attached_file :image

  def full_address
    [address, city, state, zip_code].compact.join(', ')
  end

  geocoded_by :full_address
  after_validation :geocode, if: :address_changed?

end
