class Comment < ApplicationRecord
  validates :text, :word_id, presence: true
  
  belongs_to :word
  belongs_to :user
  has_many :comment_votes
end
