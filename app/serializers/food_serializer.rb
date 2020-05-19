class FoodSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :serving, :size, :weightInGrams
end
