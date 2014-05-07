class User < ActiveRecord::Base
  has_many :courses, through: :join_tables
  has_many :join_tables
  has_many :users
  has_many :assignments
  has_many :comments
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
