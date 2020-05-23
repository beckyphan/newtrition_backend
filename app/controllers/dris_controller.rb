class DrisController < ApplicationController
  def index
    dris = Dri.all
    render json: DriSerializer.new(dris)
  end

  def create
    dri = Dri.create(dri_params)
    render json: DriSerializer.new(dri), status: :accepted
  end

  private

  def dri_params
    params.permit(:calories, :fat, :sodium, :potassium, :carbohydrates, :protein, :vitaminA, :vitaminC, :calcium, :iron)
  end
end
