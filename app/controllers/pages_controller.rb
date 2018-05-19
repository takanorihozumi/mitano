class PagesController < ApplicationController
  def index
    # @users = User.all
  end
  def privacy_policy
    
  end
  def certbot
    if params[:id] == ENV["LETSENCRYPT_REQUEST"]
    render text: ENV["LETSENCRYPT_RESPONSE"]
    end
  end
end
