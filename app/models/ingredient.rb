class Ingredient < ApplicationRecord
    # presence of the name
    validates :name, presence: true
    # uniqueness of the name
    validates :name, uniqueness: true

    has_many :doses
    has_many :cocktails, through: :doses
end
