class Shelter < ActiveRecord::Base
  has_many :animals
  has_many :owners
  has_many :users, through: :owners
  has_many :images, :as => :imageable, dependent: :destroy
  accepts_nested_attributes_for :images

  def full_address
    [address, city, state, zip_code].compact.join(', ')
  end

  geocoded_by :full_address
  after_validation :geocode, if: :address_changed?

end
