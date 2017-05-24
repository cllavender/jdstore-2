class Photo < ApplicationRecord
  mount_uploader :avatar, AvatarUploader        #挂载多图的文件夹
  belongs_to :product
end
