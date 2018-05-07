class SeasonsController < ApplicationController
  def show
    @season = Season.order(:id).find(params[:id])
    @drama = Drama.find(@season.drama_id)
    @episodes =@season.episodes.order(:id)
    @impressions = Impression.where(season_id: @season.id, impression_type: "1")

  end
end
