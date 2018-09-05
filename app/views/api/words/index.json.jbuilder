json.custom_words @words.each do | word |
  json.id word.id
  json.word word.word
  json.definition word.definition
  json.example word.example
  json.user_id word.user_id
  json.first_name word.user.first_name
  json.last_name word.user.last_name
  json.email word.user.email
  json.user do
    json.id word.user.id
    json.first_name word.user.first_name
    json.last_name word.user.last_name
    json.email word.user.email
  end
  json.email word.user.email
  json.comments word.comments
  json.definitions word.definitions.each do |definition|
    json.id definition.id
    json.definition definition.definition
    json.user do
      json.id definition.user.id
      json.first_name definition.user.first_name
      json.last_name definition.user.last_name
      json.email definition.user.email
    end
  end
  json.word_votes word.word_votes
  json.word_votes_total word.word_votes_total
  json.tags word.tags
end