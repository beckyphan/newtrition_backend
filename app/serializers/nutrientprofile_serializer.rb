class NutrientprofileSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :serving, :size, :weight, :calories, :fat, :sodium, :potassium, :carbohydrates, :protein, :vitaminA, :vitaminC, :calcium, :iron
end
