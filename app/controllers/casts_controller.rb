class CastsController < ApplicationController
  def index
  end

  def show
    @cast = Cast.find(params[:id])
  end
end
