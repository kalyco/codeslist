class User < ActiveRecord::Base
  include BCrypt
  has_many :posts

  before_save { self.email = email.downcase }
  VALID_EMAIL_REGEX = /\A([\w+\-.]?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: { maximum: 50 },
                    format: { with: VALID_EMAIL_REGEX },
                    uniqueness: { case_sensitive: false }
  validates :password, presence: true, length: { maximum: 50, minimum: 8 }

  has_secure_password
end
