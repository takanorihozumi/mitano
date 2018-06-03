class ImpressionsController < ApplicationController
  # loginしてない場合はloginページに飛ばす  
  before_action :authenticate_user!

  def new
    @impression = current_user.impressions.build
    @titles = Array.new
    if (params[:impression_type]) == "1" then #season
      @season = Season.find(params[:season_id])
      @drama = @season.drama
      @titles.push(@season.drama.title)
      @impression_title_preffix ="このシーズン"
    elsif (params[:impression_type]) == "2" then #episode
      @episode = Episode.find(params[:episode_id])
      @drama = @episode.season.drama
      @titles.push(@drama.title)
      @impression_title_preffix ="このエピソード"

    else #drama
      @drama = Drama.find(params[:drama_id]) 
      @titles.push(@drama.title)
      @impression_title_preffix ="ドラマ全体"
    end
  end

  def create
    @impression = current_user.impressions.build(impression_params)
    if @impression.save
      redirect_to drama_path(@impression.drama_id), notice: "作成しました" if impression_params[:impression_type] == "0"
      redirect_to season_path(@impression.season_id), notice: "作成しました" if impression_params[:impression_type] == "1"
      redirect_to episode_path(impression_params[:episode_id]), notice: "作成しました" if impression_params[:impression_type] == "2"
    else
      # redirect_to new_impression_path, notice: "failed...."
      redirect_to dramas_path
    end
  end

  def edit
    @impression = Impression.find(params[:id])
    @titles = Array.new
    @titles.push(@impression.drama.title)
    @season = @impression.season if @impression.impression_type != 0
    @episode = @impression.episode if @impression.impression_type == 2
  end

  def update
    @impression = Impression.find(params[:id])
    if @impression.update_attributes(impression_params)
      # 更新に成功したときの処理
      redirect_to impression_path(@impression)
    else
      render 'edit'
    end
  end

  def destroy
    Impression.find(params[:id]).destroy
    redirect_to user_path(current_user)
  end

  def show
    @impression = Impression.find(params[:id])
    @impressions = Array.new
    @impressions.push(@impression)
    @comment = Comment.new
    @comments = @impression.comments
  end
  private
  def impression_params
    params.require(:impression).permit(:user_id,:drama_id, :season_id, :episode_id, :impression_type, :impression)
  end
end
