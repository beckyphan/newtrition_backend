class Api::V1::NutrientsController < ApplicationController

  def index
    nutrients = Nutrient.all
  end

end
