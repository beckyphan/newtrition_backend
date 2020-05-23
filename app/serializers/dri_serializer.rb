class DriSerializer
  include FastJsonapi::ObjectSerializer
  attributes :calories, :fat, :sodium, :potassium, :carbohydrates, :protein, :vitaminA, :vitaminC, :calcium, :iron
end
