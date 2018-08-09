class Definition < ApplicationRecord
  validates :word_id, :definition, presence: true

  belongs_to :user
  belongs_to :word
end
