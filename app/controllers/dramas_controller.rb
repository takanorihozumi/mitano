require 'amazon/ecs'
require 'amazon-api'
class DramasController < ApplicationController
  # 同じ処理をactionの前で行いたい場合、こんな風に描ける
  # before_action :hogehoge, only: [:index,:show]
  def index
    @dramas = Drama.all.order(created_at: 'desc')
  end

  def show
    @drama = Drama.find(params[:id])
  end

  private
  def hogehoge
    
  end
end
