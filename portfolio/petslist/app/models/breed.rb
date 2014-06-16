class Breed < ActiveRecord::Base
  has_many :animal_breeds
  has_many :breeds, through: :animal_breeds
end
