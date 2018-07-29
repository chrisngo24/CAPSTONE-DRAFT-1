User.create!(first_name: "Chris", last_name: "Ngo", email: "chris@email.com", password: "password")
User.create!(first_name: "Peter", last_name: "Jang", email: "peter@email.com", password: "password")
User.create!(first_name: "Emily", last_name: "Avila", email: "emily@email.com", password: "password")

Tag.create!(name: "accuse")
Tag.create!(name: "relationship")
Tag.create!(name: "likes")

CustomWord.create!(word: "hackusation", definition: "Accusation for cheating in game or using a specific modification in game that's blacklisted / not allowed to gain advantages against other players.", user_id: 1)
CustomWord.create!(word: "relationblip", definition: "A very short relationship with little importance to either member.", user_id: 2)
CustomWord.create!(word: "masturliker", definition: "A person who performs self gratification in a public forum or on social media by liking their own comments or posts", user_id: 3)

TagWord.create!(custom_word_id: 1, tag_id: 1, user_id: 1)
TagWord.create!(custom_word_id: 2, tag_id: 2, user_id: 2)
TagWord.create!(custom_word_id: 3, tag_id: 2, user_id: 3)

Comment.create!(text: "your definition is spot on", user_id: 1, custom_word_id: 2)
Comment.create!(text: "this is offensive in every way", user_id: 1, custom_word_id: 1)
Comment.create!(text: "eat my shorts", user_id: 3, custom_word_id: 3)

CustomDefinition.create!(wordnik_api_id: 1, user_id: 1, definition: "this means nothing")
CustomDefinition.create!(wordnik_api_id: 2, user_id: 2, definition: "this means test")
CustomDefinition.create!(wordnik_api_id: 3, user_id: 3, definition: "this means data")

CommentVote.create!(user_id: 1, comment_id: 1, value: 1)
CommentVote.create!(user_id: 2, comment_id: 2, value: -1)
CommentVote.create!(user_id: 3, comment_id: 3, value: 1)

CustomWordVote.create!(user_id: 1, custom_word_id: 1, value: -1)
CustomWordVote.create!(user_id: 2, custom_word_id: 2, value: 1)
CustomWordVote.create!(user_id: 3, custom_word_id: 3, value: -1)