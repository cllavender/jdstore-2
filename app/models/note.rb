class Note < ApplicationRecord
  belongs_to :user
  has_many :notephotos
  accepts_nested_attributes_for :notephotos
end
