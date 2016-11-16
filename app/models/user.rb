class User < ApplicationRecord
  has_secure_password
  validates :email,
            presence: true,
            uniqueness: true

  validates :password,
            length: 8..20

  has_many :trips
end
