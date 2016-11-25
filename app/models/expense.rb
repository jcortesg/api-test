class Expense < ApplicationRecord
  validates :value,
            presence: true

  belongs_to :trip
  has_many :taggings
  has_many :tags, through: :taggings
end
