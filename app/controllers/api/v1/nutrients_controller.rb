class Api::V1::NutrientsController < ApplicationController

  def index
    nutrients = Nutrient.all
    render json: NutrientSerializer.new(nutrients)
  end

end
