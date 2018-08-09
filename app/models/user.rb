class User < ApplicationRecord
  has_secure_password
  validates :email, presence: true, uniqueness: true
  
  has_many :words
  has_many :definitions
  has_many :comments
  has_many :comment_votes
  has_many :word_votes
end
