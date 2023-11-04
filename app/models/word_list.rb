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
    old_words = user.active_words_parsed

    new_words = old_words.map do |word|
      word[:translated] = Translation.exists?(user_id: user.id, word_id: word[:id])
      word
    end

    update!(words: new_words)
  end
end
