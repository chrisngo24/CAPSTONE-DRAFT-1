class CustomWord < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :custom_word_votes
  has_many :tag_words
  has_many :tags, through: :tag_words
end
