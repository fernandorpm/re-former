class User < ApplicationRecord
  validates :username, :password, :email, presence: true
  validates :username, length: { minimum: 4 }
  validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
  validates :password, :email, length: { minimum: 8 }
  validates :username, :email, uniqueness: true
end
