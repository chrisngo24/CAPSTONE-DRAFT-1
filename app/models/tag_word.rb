class TagWord < ApplicationRecord
  belongs_to :word
  belongs_to :user
  belongs_to :tag
end
