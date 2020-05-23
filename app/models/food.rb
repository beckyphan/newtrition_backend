class Food < ApplicationRecord
    belongs_to :dailylog
    validates_presence_of :name, :serving
end
