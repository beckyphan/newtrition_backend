class Api::V1::DailylogsController < ApplicationController

  def index
    dailylogs = Dailylog.all
    render json: dailylogs
  end

end
