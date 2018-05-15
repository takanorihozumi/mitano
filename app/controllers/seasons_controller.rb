class SeasonsController < ApplicationController
  PER = 7

  def show
    @season = Season.order(:id).find(params[:id])
    @drama = Drama.find(@season.drama_id)
    @episodes =@season.episodes.order(:id)
    @impressions = Impression.where(season_id: @season.id, impression_type: "1").order(:created_at).reverse_order.page(params[:page]).per(PER)
    @dramas = Drama.order(created_at: 'desc')

  end
end
