class UsersController < ApplicationController
  PER = 7

  def show 
    @user = User.find(params[:id])
    @impressions = @user.impressions.page(params[:page]).per(PER)
  end
end
