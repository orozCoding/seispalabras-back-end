class Translation < ApplicationRecord
  belongs_to :user

  # validates :word_id, uniqueness: true

end
