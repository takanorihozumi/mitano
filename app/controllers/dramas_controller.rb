require 'amazon/ecs'
require 'amazon-api'
class DramasController < ApplicationController
  # 同じ処理をactionの前で行いたい場合、こんな風に描ける
  # before_action :hogehoge, only: [:index,:show]
  def index
    @dramas = Drama.order(created_at: 'desc')
  end

  def show
    @drama = Drama.find(params[:id])
    @impressions = Impression.where(drama_id: @drama.id, impression_type: "0").order(:created_at).reverse_order

  end

  private
  def hogehoge
    
  end
end
