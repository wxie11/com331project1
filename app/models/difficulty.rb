class Difficulty < ApplicationRecord
  has_many :recipes
  validates :level, presence: true
  validates :level, uniqueness: true
end
