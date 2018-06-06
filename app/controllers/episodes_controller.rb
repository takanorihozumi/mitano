class EpisodesController < ApplicationController
  PER = 7

  def show
    @episode = Episode.find(params[:id])
    @episode.season.drama.image_url = @episode.season.drama.image_url.sub!('300', '100') if request.from_smartphone?
    @impressions = Impression.where(episode_id: @episode.id, impression_type: "2").order(:created_at).reverse_order.page(params[:page]).per(PER)
    @dramas = Drama.order(created_at: 'desc')
  end
end
