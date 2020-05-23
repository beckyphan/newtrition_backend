class Food < ApplicationRecord
    has_many :nutrients
    belongs_to :dailylog
end
