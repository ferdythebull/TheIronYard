class Animal < ActiveRecord::Base
  belongs_to :shelter
  has_many :users
  has_many :images, :as => :imageable, dependent: :destroy
  accepts_nested_attributes_for :images
  has_many :animal_breeds
  has_many :breeds, through: :animal_breeds
end
