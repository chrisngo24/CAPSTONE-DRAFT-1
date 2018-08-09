class Tag < ApplicationRecord
  validates :name, presence: true

  has_many :tag_words
  has_many :words, through: :tag_words
end
