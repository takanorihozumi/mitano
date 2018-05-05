class ImpressionsController < ApplicationController
  # loginしてない場合はloginページに飛ばす  
  before_action :authenticate_user!

  def new
    @impression = current_user.impressions.build
    @hoz = params[:impression_type]
    @episode = Episode.find(params[:episode_id])
    @drama = @episode.season.drama
  end

  def create
    
  end
end
