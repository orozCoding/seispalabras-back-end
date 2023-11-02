# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

user = User.first || User.create(name: 'Angel', username: 'angel', 
email: 'angel.orozco7@gmail.com', password: "123123", password_confirmation: "123123")

WordList.create!(user: user, words: Words.new_list_for(user))

second_user = User.find_by(email: 'orozcoding@gmail.com') || User.create(name: 'OrozCoding', username: 'orozcoding', email: 'orozcoding@gmail.com', password: '123123', password_confirmation: '123123')

user.translations.create!(used_word: 'ayuda', word_id: 32) if user


Words.list.sample(20).each do |word|
  user.translations.find_or_create_by!(used_word: word[:s].sample, word_id: word[:id])
end


Words.list.sample(10).each do |word|
  second_user.translations.find_or_create_by!(used_word: word[:s].sample, word_id: word[:id])
end