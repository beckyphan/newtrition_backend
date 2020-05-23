class Api::V1::FoodsController < ApplicationController

  def index
    foods = Food.all
    render json: FoodSerializer.new(foods)
  end

  def create
    food = Food.create(food_params)
    render json: FoodSerializer.new(food)
  end

  private

  def food_params
    params.permit(:name, :serving, :size, :weight, :calories, :fat, :sodium, :potassium, :carbohydrates, :protein, :vitaminA, :vitaminC, :calcium, :iron, :dailylog_id) 
  end

end
