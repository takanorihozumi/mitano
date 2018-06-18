class CastsController < ApplicationController
  def index
  end

  def show
    @cast = Cast.find(params[:id])
    @dramas =@cast.dramas
    @dramas.each do |drama|
      drama.image_url = drama.image_url.to_s.sub!('300', '200')
    end
  end
end
