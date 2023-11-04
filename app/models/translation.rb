# == Schema Information
#
# Table name: translations
#
#  id         :bigint           not null, primary key
#  used_word  :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#  word_id    :integer          not null
#
# Indexes
#
#  index_translations_on_user_id  (user_id)
#
class Translation < ApplicationRecord
  belongs_to :user

  before_validation { self.used_word = used_word.to_s.downcase.strip }

  validates :word_id, presence: true, uniqueness: { scope: :user_id, message: "has already been translated" }
  validate :used_word_is_correct_for_word_id

  after_create :translate_word_in_user_list

  def word
    Words.list.find { |word_hash| word_hash[:id] == word_id && remove_accent_from_array(word_hash[:s]).include?(remove_accent(used_word)) }
  end

  private

    def used_word_is_correct_for_word_id
      errors.add(:used_word, "is not correct or does not match any word in our list of English words") unless word
    end

    def translate_word_in_user_list
      old_words = user.active_words_parsed

      new_words = old_words.map do |word|
        if word[:id] == word_id
          word[:translated] = true
        end

        word
      end

      user.reload.word_list.update!(words: new_words)
    end

    # remove accent marks from a word (á, é, í, ó, ú)
    def remove_accent(word)
      word.gsub(/[á]/, 'a').gsub(/[é]/, 'e').gsub(/[í]/, 'i').gsub(/[ó]/, 'o').gsub(/[ú]/, 'u')
    end

    def remove_accent_from_array(array)
      array.map { |word| remove_accent(word) }
    end
end
