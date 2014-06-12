class Animal < ActiveRecord::Base
  belongs_to :shelter
  has_many :users
  has_many :animal_locations
  has_many :locations, through: :animal_locations
  has_many :images, :as => :imageable
end
