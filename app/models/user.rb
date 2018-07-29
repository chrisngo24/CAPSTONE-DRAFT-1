class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  
  has_many :custom_words
  has_many :custom_definitions
  has_many :comments
  has_many :comment_votes
  has_many :custom_word_votes
end
