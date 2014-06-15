class Animal < ActiveRecord::Base
  belongs_to :shelter
  has_many :users
  has_many :images, :as => :imageable
end
