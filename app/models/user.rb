class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

   #mount_uploader :image, UserImageUploader
  # mount_uploader :image, NewImageUploader
   mount_uploader :image, AvatarUploader
    belongs_to :state
	  belongs_to :country
	  belongs_to :city
    has_many :likes, dependent: :destroy
    end
