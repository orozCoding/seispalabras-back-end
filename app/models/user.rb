# == Schema Information
#
# Table name: users
#
#  id              :bigint           not null, primary key
#  email           :string           not null
#  name            :string           not null
#  password_digest :string
#  username        :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
class User < ApplicationRecord
  SUPER_ADMIN_EMAILS = [
    'angel.orozco7@gmail.com',
    'orozcoding@gmail.com',
  ]

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

  after_create :create_word_list

  def active_word_list
    # check if user has a word_list and if it was created today
    if self.word_list && self.word_list.updated_at.to_date == Time.now.utc.to_date
      self.word_list
    elsif self.word_list
      self.word_list.update!(words: Words.new_list_for(self))
      self.word_list
    else
      # if not, create a new word_list
      word_list = WordList.new(user_id: id, words: Words.new_list_for(self))
      word_list.save!
      word_list
    end
  end

  # return the words of the active word list
  def active_words
    active_word_list.resync_translated_words
    active_word_list.words
  end

  # active_words is a an array with jsons as strings
  # this method parses the strings into hashes
  def active_words_parsed
    active_words.map { |word| eval(word) }
  end

  def translated_words
    translations.map do |translation|
      {
        word: translation.word[:e],
        word_id: translation.word[:id],
        used_word: translation.used_word,
        alternative_answers: translation.alternative_answers
      }
    end
  end

  def create_word_list
    return unless self.word_list.nil?

    WordList.create!(user_id: id, words: Words.new_list_for(self))
  end

  def super_admin?
    SUPER_ADMIN_EMAILS.include?(email)
  end

  def translations_count
    translations.count
  end

  def as_json(options = {})
    super(options.merge({ 
      except: [:password_digest],
      methods: [:translations_count]
      }))
  end
end
