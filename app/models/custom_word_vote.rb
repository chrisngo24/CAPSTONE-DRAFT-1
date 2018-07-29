class CustomWordVote < ApplicationRecord
  belongs_to :user
  belongs_to :custom_word
end
