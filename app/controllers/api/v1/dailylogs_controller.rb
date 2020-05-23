class Api::V1::DailylogsController < ApplicationController

  def index
    dailylogs = Dailylog.all
    render json: DailylogSerializer.new(dailylogs)
  end

  def create
    dailylog = Dailylog.create(dailylog_params)
    render json:DailylogSerializer.new(dailylog), status: :accepted
  end

  private

  def dailylog_params
    params.permit(:log_date, :user_id)
  end

end
