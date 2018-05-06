class SeasonsController < ApplicationController
  def show
    @season = Season.order(:id).find(params[:id])
    @drama = Drama.find(@season.drama_id)
    @episodes =@season.episodes.order(:id)
  end
end
