# == Schema Information
#
# Table name: word_lists
#
#  id         :bigint           not null, primary key
#  words      :string           not null, is an Array
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_word_lists_on_user_id  (user_id)
#
class WordList < ApplicationRecord
  belongs_to :user

  validates :words, presence: true

  # check if the words have a correct translated true/false value
  # by checking if the word is translated by the user
  def resync_translated_words
    old_words = words.map { |word| eval(word) }

    new_words = old_words.map do |word|
      word[:translated] = Translation.find_by(user_id: user_id, word_id: word[:id]).present?
      word
    end

    self.update!(words: new_words)
    self
  end
end
