require 'amazon/ecs'
require 'amazon-api'
class DramasController < ApplicationController
  PER = 7
  # 同じ処理をactionの前で行いたい場合、こんな風に描ける
  # before_action :hogehoge, only: [:index,:show]
  def index
    unless (params[:category]).nil? then
      @title = "海外ドラマ：#{getCategoryName}"
      @dramas = Drama.where(category: params[:category])
    else  
      @title = "話題のドラマ"
      @dramas = Drama.all
    end
    if request.from_smartphone? then
      @dramas.each do |drama|
        image = drama.image_url
        drama.image_url=image.to_s.sub!('300', '200')
      end
    end
    @subTitle = getSubTitle
  end

  def show
    @drama = Drama.find(params[:id])
    @drama.image_url=@drama.image_url.sub!('300', '100') if request.from_smartphone?
    @impressions = Impression.where(drama_id: @drama.id, impression_type: "0").order(:created_at).reverse_order.page(params[:page]).per(PER)
    @dramas = Drama.all
    @casts = @drama.casts
    @entryCategories = EntryCategory.where(name:@drama.title)
    @entries = Array.new
    @entryCategories.each do |entryCategory|
        @entries.push(entryCategory.entry)
    end
  end

  private
  def getCategoryName
    if params[:category] == "0" then
      return "アクション"
    elsif params[:category] == "1" then
      return "ファンタジー"
    elsif params[:category] == "2" then
      return "ドラマ"
    elsif params[:category] == "3" then
      return "サスペンス・ミステリー"
    elsif params[:category] == "4" then
      return "ラブロマンス"
    elsif params[:category] == "5" then
      return "韓流"
    else
      return "話題のドラマ"
    end
  end
  def getSubTitle
    if params[:category] == "0" then
      return "海外ドラマといえばド派手なアクション！"
    elsif params[:category] == "1" then
      return "壮大な世界観で描かれるファンタジーの世界へ"
    elsif params[:category] == "2" then
      return "人間の出会い・別れの中で繰り広げられるストーリーに酔いしれる"
    elsif params[:category] == "3" then
      return "様々なストーリーに没頭"
    elsif params[:category] == "4" then
      return "恋がしたくなるような恋愛ドラマを見つけましょう"
    elsif params[:category] == "5" then
      return "話題の韓流ドラマをピックアップ"
    else
      return "mitano編集長がオススメする今話題のドラマです"
    end
  end
end
