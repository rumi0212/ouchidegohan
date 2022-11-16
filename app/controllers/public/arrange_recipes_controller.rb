class Public::ArrangeRecipesController < ApplicationController

  before_action :authenticate_public!,only: [:show]
  
  def new
    @arrange_recipe = ArrangeRecipe.new
    @arrange_ingredients = @arrange_recipe.arrange_ingredients.build
    @arrange_procedures = @arrange_recipe.arrange_procedures.build
  end
  
  def create
    @arrange_recipe = ArrangeRecipe.new(arrange_recipe_params)
    @arrange_recipe.customer_id = current_customer.id
    @arrange_recipe.save
    redirect_to arrange_recipes_path
  end
  
  
  private

  def arrange_recipe_params
    params.require(:arrange_recipe).permit(:title, :image, :comment, :status, :serving, arrange_procedures_attributes: [:body, :_destroy],arrange_ingredients_attributes: [:name, :amount, :_destroy])
  end
  
end
