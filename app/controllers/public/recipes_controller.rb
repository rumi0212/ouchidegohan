class Public::RecipesController < ApplicationController

  def index
    recipes = if params[:store_id].present?
                Recipe.where(status: true, store_id: params[:store_id])
              else
                Recipe.where(status: true)
              end
    @recipes = recipes.page(params[:page]).per(4)
  end

  def show
    @recipe = Recipe.find(params[:id])
    @post_comment = PostComment.new
    @arrange_recipes = @recipe.arrange_recipes.where(status: true)
  end

  private

  def recipes_params
    parmas.require(:recipe).permit(:store_id, :category_id, :title, :serving, :comment, :status, :post_comment, procedures_attributes: [:id, :body, :_destroy],ingredients_attributes: [:id, :name, :amount, :_destroy])
  end

end
