class Api::V1::FoodsController < ApplicationController

  def index
    foods = Food.all
    render json: FoodSerializer.new(foods)
  end

end
