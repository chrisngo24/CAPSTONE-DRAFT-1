class TagWord < ApplicationRecord
  belongs_to :custom_word
  belongs_to :user
  belongs_to :tag
end
