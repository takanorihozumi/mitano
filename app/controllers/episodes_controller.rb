class EpisodesController < ApplicationController
  def show
    @episode = Episode.find(params[:id])
    puts @episode.id
    puts 'hoz!!!!!!!!'
    @impressions = Impression.where(episode_id: @episode.id)
  end
end
