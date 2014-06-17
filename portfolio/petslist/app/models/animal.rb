class Animal < ActiveRecord::Base
  belongs_to :shelter
  has_many :users
  has_many :images, :as => :imageable, dependent: :destroy
  has_many :animal_breeds
  has_many :breeds, through: :animal_breeds
  accepts_nested_attributes_for :images
end
