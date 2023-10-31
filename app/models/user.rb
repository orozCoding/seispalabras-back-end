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
  has_many :word_lists, dependent: :destroy

  validates :name, presence: true, format: { without: /\s/, message: "Can't have blank spaces" },
  length: { minimum: 3, maximum: 12 }
  validates :username, presence: true, uniqueness: true,
  format: { with: /\A[a-zA-Z0-9]+\Z/, message: "No special characters or spaces allowed" },
  length: { minimum: 4, maximum: 12 }
  validates :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "Use a valid email" }
  validates :password, presence: true, confirmation: true, length: { minimum: 6 }
  validates :password_confirmation, presence: true
end
