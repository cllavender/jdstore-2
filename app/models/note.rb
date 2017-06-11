class Note < ApplicationRecord
  belongs_to :user
  has_many :notephotos
  accepts_nested_attributes_for :notephotos
  has_one :experience

  def generate_point
    Experience.create(user_id: user.id, note_id: id, point: 100)
  end
end
