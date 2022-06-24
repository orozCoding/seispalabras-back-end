class User < ApplicationRecord
  has_secure_password
  has_many :translations
  has_many :word_lists

  validates :name, presence: true
  validates :username, presence: true
  validates :email, presence: true
  validates :password, presence: true
  validates :password, confirmation: true
  validates :password_confirmation, presence: true

  validates :username, uniqueness: true
  validates :email, uniqueness: true

  validates_format_of :email,:with => /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/

end
