json.custom_words @words.each do | word |
  json.id word.id
  json.word word.word
  json.definition word.definition
  json.example word.example
  json.user_id word.user_id
  json.comments word.comments
  json.definitions word.definitions
  json.word_votes word.word_votes
  json.word_votes_total word.word_votes_total
  json.tags word.tags
end