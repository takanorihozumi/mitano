class UsersController < ApplicationController

  def show 
    @user = User.find(params[:id])
    @impressions = @user.impressions
  end

  def following
    @title = "がフォローしているmitanoユーザー"
    @user  = User.find(params[:id])
    @users = @user.following
    render 'show_follow'
  end

  def followers
    @title = "をフォローしているmitanoユーザー"
    @user  = User.find(params[:id])
    @users = @user.followers
    render 'show_follow'
  end
end
