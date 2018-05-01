class ImpressionsController < ApplicationController
//loginしてない場合はloginページに飛ばす  
before_action :authenticate_user!

  def index
  end

  def show
  end

  def new
    @impression = current_user.impressions.build
  end

  def create
    # パラメーターとともに現在の感想を作成
    @impression = current_user.impressions.build(impression_params)

    if @impression.save
      # 識別するためにIDが必要
      redirect_to manage_impression_basics_path(@impression), notice: "感想を共有しました"
    else
      redirect_to new_impression_path(@impression), notice: "感想を共有fail.."
    end
  end

  def edit
  end

  def update
  end

  def basics
    
  end

  private
  def impression_params
    params.require(:impression).permit(:title, :season, :episode)
  end
end
