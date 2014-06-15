class Image < ActiveRecord::Base
  belongs_to :imageable, :polymorphic => true
  
  has_attached_file :image, :styles => { :thumb => "25x25>", :small => "80x80>", :medium => "150x150>", :large => "300x300>"}, :default_url => "/assets/:style/default_avatar.jpg"
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
