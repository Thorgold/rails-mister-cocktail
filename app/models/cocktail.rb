class Cocktail < ApplicationRecord
  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
  has_attachment :photo
  validates :name, uniqueness: true, allow_nil: false, presence: true
end
