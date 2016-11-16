class Trip < ApplicationRecord
  validates :name,
            presence: true

  validates :date,
            presence: true

  belongs_to :user
  has_many :expenses
end
