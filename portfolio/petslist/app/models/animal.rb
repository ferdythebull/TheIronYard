class Animal < ActiveRecord::Base
  belongs_to :shelter
  has_many :users
  has_many :images, :as => :imageable
  has_many :animal_breeds
  has_many :breeds, through: :animal_breeds
end
