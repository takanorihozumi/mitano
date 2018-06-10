class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:following, :followers]

  def show 
    @user = User.find(params[:id])
    @impressions = @user.impressions
  end

  def following
    @title = "Following"
    @user  = User.find(params[:id])
    @users = @user.following
    render 'show_follow'
  end

  def followers
    @title = "Followers"
    @user  = User.find(params[:id])
    @users = @user.followers
    render 'show_follow'
  end
end
