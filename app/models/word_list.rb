# == Schema Information
#
# Table name: word_lists
#
#  id         :bigint           not null, primary key
#  list       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#
# Indexes
#
#  index_word_lists_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class WordList < ApplicationRecord
  belongs_to :user
end
