class Public::ArrangeRecipesController < ApplicationController

  #before_action :authenticate_public!,only: [:show]

  def new
    @recipe = Recipe.find(params[:recipe_id])
    @arrange_recipe = ArrangeRecipe.new
    @arrange_ingredients = @arrange_recipe.arrange_ingredients.build
    @arrange_procedures = @arrange_recipe.arrange_procedures.build
  end

  def index
    @arrange_recipes = ArrangeRecipe.page(params[:page]).per(10)
  end

  def show
    @arrange_recipe = ArrangeRecipe.find(params[:id])
  end

  def edit
    @arrange_recipe = ArrangeRecipe.find(params[:id])
  end

  def create
    @arrange_recipe = ArrangeRecipe.new(arrange_recipe_params)
    @arrange_recipe.recipe_id = params[:recipe_id]
    @arrange_recipe.customer_id = current_customer.id
    if @arrange_recipe.save
      redirect_to arrange_recipe_path(@arrange_recipe.id)
    else
      render :new
    end
  end

  def update
    @arrange_recipe = ArrangeRecipe.find(params[:id])
    if @arrange_recipe.update(arrange_recipe_params)
    redirect_to arrange_recipe_path(@arrange_recipe)
    else
    render:edit
    end
  end



  private

  def arrange_recipe_params
    params.require(:arrange_recipe).permit(:title, :image, :comment, :status, :serving, :recipe_id, arrange_procedures_attributes: [:id, :body, :_destroy],arrange_ingredients_attributes: [:id, :name, :amount, :_destroy])
  end

end
