class Comment < ApplicationRecord
  belongs_to :custom_word
  belongs_to :user
  has_many :comment_votes
end
