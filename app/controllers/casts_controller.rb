class CastsController < ApplicationController
  def index
<<<<<<< HEAD
    @casts = Cast.all
=======
>>>>>>> 8b10a9b5af5d0b274f0c4d88f0e06ed0e67a79a8
  end

  def show
    @cast = Cast.find(params[:id])
<<<<<<< HEAD
    @dramas =@cast.dramas
    @dramas.each do |drama|
      drama.image_url = drama.image_url.to_s.sub!('300', '200')
    end
=======
>>>>>>> 8b10a9b5af5d0b274f0c4d88f0e06ed0e67a79a8
  end
end
