class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\b[a-zA-Z0-9._%\-]+@#{ENV['EMAIL_DOMAIN']}\z/

  has_secure_password

  before_validation :downcase_email

  validates :email, presence: true,
                    uniqueness: { case_sensitive: false },
                    format: { with: VALID_EMAIL_REGEX }
  validates :password, presence: true, length: { minimum: 6 }

  def downcase_email
    email.downcase! if email?
  end
end
