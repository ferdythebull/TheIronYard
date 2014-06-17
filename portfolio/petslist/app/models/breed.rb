class Breed < ActiveRecord::Base
  has_many :animal_breeds
  has_many :animals, through: :animal_breeds
end
