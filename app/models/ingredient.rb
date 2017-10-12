class Ingredient < ApplicationRecord
  has_many :doses
  validates :name, uniqueness: true, allow_nil: false, presence: true
end
