class Public::PostCommentsController < ApplicationController
  
  def create
    @post_image = PostImage.find(params[:post_image_id])
    @comment = current_cosutomer.post_comments.new(post_comment_params)
    @comment.recipe_id = @recipe.id
    @comment.save
    redirect_to recipe_path(recipe)
  end

  private

  def post_comment_params
    params.require(:post_comment).permit(:comment)
  end
  
end
