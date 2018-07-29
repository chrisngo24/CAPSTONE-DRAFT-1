class Tag < ApplicationRecord
  has_many :tag_words
  has_many :custom_words, through: :tag_words
  # belongs_to :tag_words
  # belongs_to :custom_words
end
