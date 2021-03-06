class CommentsController < ApplicationController
  load_and_authorize_resource	
  def create
  	@post = Post.find(params[:post_id])
  	@comment = @post.comments.build(comment_params)
    @comment.user = current_user
  	@comment.save
  	redirect_to posts_path

  end

  def update
  end

  def destroy
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to posts_path
  end

  def comment_params
  	params.require(:comment).permit(:content)
  end

end
