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
require "test_helper"

class TranslationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
