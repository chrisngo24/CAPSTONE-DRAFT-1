class Word < ApplicationRecord
  validates :word, :definition, presence: true

  belongs_to :user
  has_many :comments
  has_many :word_votes
  has_many :tag_words
  has_many :tags, through: :tag_words
  has_many :definitions

  def word_votes_total
    result = 0
    word_votes.each do |word_vote|
      result += word_vote.value
    end
    result
  end
end
