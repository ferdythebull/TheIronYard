class User < ActiveRecord::Base
  has_many :courses, through: :join_tables
  has_many :join_tables
  has_many :assignments, through: :submissions
  has_many :submisssions, :dependent => :destroy
  has_many :comments, as: :commentable, :dependent => :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  accepts_nested_attributes_for :comments

  USER_TYPES = ["admin", "student"]

end
