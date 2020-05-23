class Nutrient < ApplicationRecord
  belongs_to :food
  has_many :dailylogs, through: :foods
end
