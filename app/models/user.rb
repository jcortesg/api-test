class User < ApplicationRecord
  has_secure_password
  validates :email,
            presence: true,
            uniqueness: true

  validates :password,
            length: 8..20

  def self.authenticate(email, password)
    user = find_by_email(email)
    user if !user.nil? && user.authenticate(password)
  end
end
