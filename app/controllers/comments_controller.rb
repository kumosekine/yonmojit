class CommentsController < ApplicationController
  def create
    comment = Comment.create(comment_params)
    redirect_to "/idioms/#{comment.idiom.id}"
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, idiom_id: params[:idiom_id])
  end
end