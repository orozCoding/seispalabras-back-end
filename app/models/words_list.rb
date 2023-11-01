# == Schema Information
#
# Table name: words_lists
#
#  id         :bigint           not null, primary key
#  words      :string           not null, is an Array
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_words_lists_on_user_id  (user_id)
#
class WordsList < ApplicationRecord
  belongs_to :user
end
