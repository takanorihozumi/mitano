class EpisodesController < ApplicationController
  PER = 7

  def show
    @episode = Episode.find(params[:id])
    @impressions = Impression.where(episode_id: @episode.id, impression_type: "2").order(:created_at).reverse_order.page(params[:page]).per(PER)
    @dramas = Drama.order(created_at: 'desc')
  end
end
