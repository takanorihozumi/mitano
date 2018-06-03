class PostsController < ApplicationController
  def index
    @following = Drama.find(12)
    @reason = Drama.find(24)
    @prison = Drama.find(19)
    @game = Drama.find(6)
  end

  def show
  end
end
