class ImpressionsController < ApplicationController
  # loginしてない場合はloginページに飛ばす  
  before_action :authenticate_user!

  def new
    @impression = current_user.impressions.build
    @titles = Array.new
    if((params[:impression_type]) != "0" && !(params[:impression_type]).nil? ) then
      @episode = Episode.find(params[:episode_id]) #if !params[:impression_type].nil?
      @drama = @episode.season.drama #if !params[:impression_type].nil?
      @titles.push(@drama.title)
    else
      @titles = Drama.pluck(:title)
    end
  end

  def create
    @impression = current_user.impressions.build(impression_params)
    if @impression.save
      redirect_to episode_path(impression_params[:episode_id]), notice: "作成しました"
    else
      # redirect_to new_impression_path, notice: "failed...."
      redirect_to dramas_path
    end
  end

  def edit
    @impression = Impression.find(params[:id])
    @episode = Episode.find(@impression.episode_id)
    @drama = @episode.season.drama
  end
  private
  def impression_params
    params.require(:impression).permit(:user_id,:drama_id, :season_id, :episode_id, :impression_type, :impression)
  end
end
