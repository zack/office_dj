class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\b[a-zA-Z0-9._%\-]+@#{ENV['email_domain']}\z/

  has_secure_password

  before_validation :downcase_email

  validates :email, presence: true,
                    uniqueness: { case_sensitive: false },
                    format: { with: VALID_EMAIL_REGEX }
  validates :password, allow_nil: true,
                       length: { minimum: 6 },
                       presence: true

  def downcase_email
    email.downcase! if email?
  end
end
