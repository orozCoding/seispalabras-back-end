# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  email           :string           not null
#  name            :string           not null
#  password_digest :string
#  role            :string           default("student")
#  username        :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class User < ApplicationRecord
  has_secure_password
  has_many :translations, dependent: :destroy
  has_one :word_list, dependent: :destroy

  validates :name, presence: true, format: { without: /\s/, message: "Can't have blank spaces" },
  length: { minimum: 3, maximum: 12 }
  validates :username, presence: true, uniqueness: true,
  format: { with: /\A[a-zA-Z0-9]+\Z/, message: "No special characters or spaces allowed" },
  length: { minimum: 4, maximum: 12 }
  validates :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "Use a valid email" }
  validates :password, presence: true, confirmation: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true

  def active_word_list
    # check if user has a word_list and if it was created today
    if self.word_list && self.word_list.created_at.to_date == Time.now.utc.to_date
      self.word_list.words
    elsif self.word_list.present?
      word_list = self.word_list.update!(words: Words.new_list_for(self))
      word_list.words
    else
      # if not, create a new word_list
      word_list = WordList.create!(user_id: id, words: Words.new_list_for(self))
      word_list.words
    end
  end

  def active_words_parsed
    active_word_list.map do |word|
      parsed_word = eval(word)
    
      {
        id: parsed_word[:id],
        e: parsed_word[:e],
        s: parsed_word[:s],
        translated: parsed_word[:translated]
      }
    end
  end
end
