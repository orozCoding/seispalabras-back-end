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
end
