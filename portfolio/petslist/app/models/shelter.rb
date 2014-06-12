class Shelter < ActiveRecord::Base
  has_many :animals
  has_many :owners
  has_many :users, through: :owners
  has_many :shelter_locations
  has_many :locations, through: :shelter_locations
  has_many :images, :as => :imageable
  has_attached_file :image
end
