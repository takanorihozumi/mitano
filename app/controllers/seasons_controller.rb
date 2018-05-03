class SeasonsController < ApplicationController
  def show
    @season = Season.find(params[:id])
    @drama = Drama.find(@season.drama_id)
  end
end
