class Recipe < ApplicationRecord
  belongs_to :difficulty
  validates :title, :img_url, :ingredient, :direction, :difficulty_id, presence: true
  validates :title, uniqueness: true
  validates :img_url, allow_blank: true, format: {
with: %r{\.(jpg|png)\Z}i,
message: 'Image must be in either JPG or PNG format.'
  }
end
