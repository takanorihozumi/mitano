class EpisodesController < ApplicationController
  def show
    @episode = Episode.find(params[:id])
  end
end
