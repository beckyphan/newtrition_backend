class Nutrientprofile < ApplicationRecord
  validates_presence_of :name, :serving, :size, :weight
  validates_uniqueness_of :name
end
