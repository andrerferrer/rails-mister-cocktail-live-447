class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient

  validates :description, presence: true

  # Validates that we have a unique pair of cocktail and ingredient
  validates :cocktail_id, uniqueness: { scope: :ingredient_id }
 
end
