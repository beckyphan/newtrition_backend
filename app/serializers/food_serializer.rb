class FoodSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :serving, :size, :weight, :calories, :fat, :sodium, :potassium, :carbohydrates, :protein, :vitaminA, :vitaminC, :calcium, :iron, :dailylog_id
  belongs_to :dailylog
end
