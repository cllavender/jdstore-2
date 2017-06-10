class Notephoto < ApplicationRecord
  mount_uploader :img, ImgUploader

  belongs_to :note, optional: true
end
