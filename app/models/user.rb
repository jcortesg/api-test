class User < ApplicationRecord
  include Authentication
  validates :email,
            presence: true,
            uniqueness: true

  validates :password,
            length: 8..20

  has_many :trips
end
