class Dose < ApplicationRecord
  validates_uniqueness_of :ingredient_id, :scope => :cocktail_id
  validates :description, presence: true
  belongs_to :ingredient
  belongs_to :cocktail
end
