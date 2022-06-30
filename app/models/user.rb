class User < ApplicationRecord
  has_secure_password
  has_many :translations, depent: :destroy
  has_many :word_lists, depent: :destroy

  validates :name, presence: true, format: { without: /\s/, message: "Can't have blank spaces" },
  length: { minimum: 3, maximum: 12 }
  validates :username, presence: true, uniqueness: true,
  format: { with: /\A[a-zA-Z0-9]+\Z/, message: "No special characters or spaces allowed" },
  length: { minimum: 4, maximum: 12 }
  validates :email, presence: true, uniqueness: true, format: { with: /\A[^@\s]+@([^@\s]+\.)+[^@\s]+\z/, message: "Use a valid email" }
  validates :password, presence: true
  validates :password, confirmation: true
  validates :password_confirmation, presence: true


end
