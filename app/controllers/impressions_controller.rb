class ImpressionsController < ApplicationController
  # loginしてない場合はloginページに飛ばす  
  before_action :authenticate_user!

  def new
    @impression = current_user.impressions.build

    @episode = Episode.find(params[:episode_id]) #if !params[:impression_type].nil?
    @drama = @episode.season.drama #if !params[:impression_type].nil?
  end

  def create
    @impression = current_user.impressions.build(impression_params)
    if @impression.save
      redirect_to edit_impression_path(@impression), notice: "作成しました"
    else
      redirect_to new_impression_path, notice: "failed...."
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
