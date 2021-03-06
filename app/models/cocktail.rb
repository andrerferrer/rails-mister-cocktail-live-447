class Cocktail < ApplicationRecord
  # presence of the name
  validates :name, presence: true
  # uniqueness of the name
  validates :name, uniqueness: true

  has_many :doses, dependent: :destroy
  has_many :ingredients, through: :doses
end
