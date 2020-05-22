class NutrientSerializer
  include FastJsonapi::ObjectSerializer
  attributes :ntype, :nname, :nvalue, :nunit, :food_id
  belongs_to :food
end
