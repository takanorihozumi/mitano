class WatchingStatusesController < ApplicationController
  before_action :authenticate_user!
  def select
    watchingStatus = params[:watchingStatus]
    if true then
      #firstOrInitialize update
      @drama = Drama.find(params[:drama_id])
      localWatchingStatus = @drama.watching_statuses.where(user_id: current_user.id, drama_id: @drama.id).first_or_initialize
      puts localWatchingStatus
      localWatchingStatus.update_attributes(user_id: current_user.id,watching_type: 1, drama_id: @drama.id, season_id: 0, episode_id:0, status: watchingStatus)
    else
      # 
    end
    puts params[:id]
      respond_to do |format|
        format.html { redirect_to request.referrer, notice: "視聴ステータスを記録したよー！" || root_url }
        format.js
      end
  end
end
