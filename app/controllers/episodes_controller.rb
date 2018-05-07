class EpisodesController < ApplicationController
  def show
    @episode = Episode.find(params[:id])
    @impressions = Impression.where(episode_id: @episode.id impression_type: "2")
  end
end
