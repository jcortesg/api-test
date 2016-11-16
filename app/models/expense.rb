class Expense < ApplicationRecord
  validates :value,
            presence: true

  belongs_to :trip
end
