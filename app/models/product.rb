class Product < ApplicationRecord
  # mount_uploader :image, ImageUploader
  has_many :photos
  accepts_nested_attributes_for :photos      # 把photos 作为product的巢状属性
  belongs_to :user
  has_many :favorites
  has_many :fans, through: :favorites, source: :user
  belongs_to :category
end
