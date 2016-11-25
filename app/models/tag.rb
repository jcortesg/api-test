class Tag < ApplicationRecord
  has_many :expenses, through: :taggings
  has_many :taggings
end
