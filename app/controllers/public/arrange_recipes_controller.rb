class Public::ArrangeRecipesController < ApplicationController
  has_one_attached :image
  before_action :authenticate_public!,only: [:show]
  
  def new
    @arrange_recipe = ArrangeRecipe.new
  end
  
  def create
    @arrange_recipe = ArrangeRecipe.new(arrange_recipe_params)
    @arrange_recipe.customer_id = current_customer.id
    @arrange_recipe.save
    redirect_to arrange_recipes_path
  end
  
  
  private

  def arrange_recipe_params
    params.require(:arrange_recipe).permit(:title, :image, :ingredient, :amount, :cooking_method, :comment, :status)
  end
  
end
