class UsersController < ApplicationController

  def show 
    @user = User.find(params[:id])
    # @impressions = @user.impressions
    @miterus = []
    @mitas = []
    @mitais = [] 
    @user.watching_statuses.each do |wathcingStatus|
      drama = wathcingStatus.drama
      drama.image_url = drama.image_url.to_s.sub!('300', '200')
      if wathcingStatus.status==2 then
        @miterus.push(drama)
      elsif wathcingStatus.status==3
        @mitas.push(drama)
      elsif wathcingStatus.status==4
        @mitais.push(drama)
      end
    end
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
