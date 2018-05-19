class PagesController < ApplicationController
  def index
    # @users = User.all
  end
  def privacy_policy
    
  end
  def certbot
    if ENV["LETS_ENCRYPT_CHALLENGE"]
      render text: ENV["LETS_ENCRYPT_CHALLENGE"], layout: nil
    else
      raise ActionController::RoutingError.new('Not Found')
    end
  end
end
