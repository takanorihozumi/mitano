class LikesController < ApplicationController
  # before_action :authenticate_user!

  def create
    if !user_signed_in? then
      redirect_to new_impression_path
      respond_to do |format|
        format.html { redirect_to request.referrer, notice: "failed...." || root_url, notice: "failed...." }
        format.js
        return
      end
    end

    @impression = Impression.find(params[:impression_id])

    unless @impression.like?(current_user)
      @impression.add_like(current_user)
      @impression.reload
      respond_to do |format|
        format.html { redirect_to request.referrer || root_url }
        format.js
      end
    end
  end

  def destroy
    @impression = Like.find(params[:id]).impression
    @impression.delete_like(current_user)
    @impression.reload
    respond_to do |format|
      format.html { redirect_to @impression }
      format.js
    end
  end
end
