class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

   mount_uploader :image, UserImageUploader
   mount_uploader :image, NewImageUploader
   mount_uploader :image, AvatarUploader
    belongs_to :state
	has_many :country
	belongs_to :city
end
