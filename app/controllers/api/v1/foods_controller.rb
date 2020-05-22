class Api::V1::FoodsController < ApplicationController

  def index
    foods = Food.all
    options = {
      include: [:food]
    }
    render json: FoodSerializer.new(foods, options)
  end

end
