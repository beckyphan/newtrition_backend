class Api::V1::NutrientprofilesController < ApplicationController

  def index
    nutrientprofiles = Nutrientprofile.all
    render json: NutrientprofileSerializer.new(nutrientprofiles)
  end

end
