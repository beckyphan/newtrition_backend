class Food < ApplicationRecord
    belongs_to :dailylog
    validates_presence_of :name, :serving
    # validate :food_with_existing_nutrientprofile
    #
    # def food_with_existing_nutrientprofile
    #   existing = Nutrientprofile.find_by(name: name)
    #
    #   if !existing
    #     errors.add(:name, "is not yet added to nutrientprofile database")
    #   end
    # end
end
