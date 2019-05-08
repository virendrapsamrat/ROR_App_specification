class Image < ApplicationRecord

   mount_uploader :image_name, AvatarUploader

end
