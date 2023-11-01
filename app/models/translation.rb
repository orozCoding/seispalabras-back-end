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

  validates :used_word, presence: true, uniqueness: { scope: :user_id }
  validates :word_id, presence: true, uniqueness: { scope: :user_id }
  validate :used_word_is_correct_for_word_id

  def word
    Words.list.find { |word_hash| word_hash[:id] == word_id && word_hash[:s].include?(used_word) }
  end

  private

    def used_word_is_correct_for_word_id
      errors.add(:used_word, "is not correct or does not match any word in our list of English words") unless word
    end
end
