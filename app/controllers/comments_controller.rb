class CommentsController < ApplicationController
  def create
    @impression = Impression.find(params[:impression_id])
    @comment = @impression.comments.build(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      @impression.reload
      render :index
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    if @comment.destroy
      render :index
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:content, :impression_id, :user_id)
    end
end
