class Api::V1::NutrientprofilesController < ApplicationController

  def index
    nutrientprofiles = Nutrientprofile.all
    render json: NutrientprofileSerializer.new(nutrientprofiles)
  end

  def create
    nutrientprofile = Nutrientprofile.create(nutrientprofile_params)
    render json: NutrientprofileSerializer.new(nutrientprofile), status: :accepted
  end

  private

  def nutrientprofile_params
    params.permit(:name, :serving, :size, :weight, :calories, :fat, :sodium, :potassium, :carbohydrates, :protein, :vitaminA, :vitaminC, :calcium, :iron)
  end

end
