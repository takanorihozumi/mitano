class DramasController < ApplicationController
  def index
    @dramas = Drama.all.order(created_at: 'desc')
  end
end
