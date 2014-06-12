class AnimalLocation < ActiveRecord::Base
  belongs_to :location
  belongs_to :animal
end
