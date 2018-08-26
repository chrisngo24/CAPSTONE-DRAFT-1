# json.wordnik_api_id @word.wordnik_api_id
json.array! @words.each do | word |
  json.id word.id
  json.word word.word
  json.definition word.definition
  json.example word.example
  json.user_id word.user_id
end
