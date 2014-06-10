class Profile < ActiveRecord::Base
  attr_accessible :user_id, :location, :zip

  validates :user, presence: true

  belongs_to :user
   
end
