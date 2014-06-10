class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_attached_file :photo, :styles => { :medium => "160x160>", :thumb => "40x40>" }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :photo, :content_type => /\Aimage\/.*\Z/

  reverse_geocoded_by :latitude, :longitude

  has_one :profile, dependent: :destroy
  has_one :photo, dependent: :destroy
  has_many :user_locations
  has_many :locations, through: :user_locations

  def self.from_omniauth(auth)
    where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
      user.provider = auth.provider
      user.uid = auth.uid
      user.name = auth.info.name
      user.oauth_token = auth.credentials.token
      user.oauth_expires_at = Time.at(auth.credentials.expires_at)
      user.save!(validate: false)
    end
  end

  def is_admin?
    is_admin
  end

  USER_TYPES = ["admin", "user"]
  
end
