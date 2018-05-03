class ImpressionsController < ApplicationController
  # loginしてない場合はloginページに飛ばす  
  before_action :authenticate_user!
end
