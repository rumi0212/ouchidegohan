class Public::RecipesController < ApplicationController
  
  def index
    @total_recipes = Recipe.all
    @recipes = Recipe.all.page(params[:page]).per(4)
  end

  def show
    @recipe = Recipe.find(params[:id])
    @post_comment = PostComment.new
    # @store = Store.find(params[:store_id])
    # 後で確認　@cart_item = CartItem.new
  end

  private
  
  def recipes_params
    parmas.require(:recipe).permit(:store_id, :category_id, :title, :serving, :comment, :status)
  end
  
end
