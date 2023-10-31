# == Schema Information
#
# Table name: translations
#
#  id         :bigint           not null, primary key
#  word       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint           not null
#  word_id    :integer          not null
#
# Indexes
#
#  index_translations_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#
class Translation < ApplicationRecord
  belongs_to :user
end
