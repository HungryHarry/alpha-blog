class User < ApplicationRecord
  validates :username, presence: true,
                        uniqueness: { case_sensitive: false },
                        length: {minimum: 3, maximum: 85}
  VALIDATES_EMAIL_REGEX = /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates :email, uniqueness: true,
                        presence: true,
                        length: { maximum: 105 },
                        format: { with: VALIDATES_EMAIL_REGEX }
end
