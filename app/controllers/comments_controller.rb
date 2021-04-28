class CommentsController < ApplicationController

  def create
    @comments = Comment.create(comment_params)
    @comments.save
    redirect_to prototype_path(@comments.prototype) 
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id:current_user.id ,prototype_id:params[:prototype_id])
  end
end
