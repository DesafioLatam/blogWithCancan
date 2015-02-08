class CommentsController < ApplicationController
  def create
  	@post = Post.find(params[:post_id])
  	@comment = @post.comments.build(comment_params)
  	@comment.save
  	redirect_to posts_path

  end

  def update
  end

  def destroy
  end

  def comment_params
  	params.require(:comment).permit(:content)
  end

end
