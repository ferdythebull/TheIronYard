class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :forums
  has_many :posts
  has_many :topics

  def is_admin?
    is_admin
  end

  USER_TYPES = ["admin", "student"]

end
