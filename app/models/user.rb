class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  mount_uploader :avatar, ImgUploadUploader
  has_many :posts
  acts_as_commontator
  acts_as_voter
  acts_as_follower
  acts_as_followable
end
