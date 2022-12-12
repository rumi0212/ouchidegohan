class Admin::RecipesController < ApplicationController
  before_action :authenticate_admin!


  def new
    @recipe = Recipe.new
    @store = Store.find(params[:store_id])
    @ingredients = @recipe.ingredients.build
    @procedures = @recipe.procedures.build
  end

  def index
    @recipes = Recipe.page(params[:page]).per(10)

  end

  def show
    @recipe = Recipe.find(params[:id])
    @post_comment = PostComment.new

  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def create
    @store = Store.find(params[:store_id])
    @recipe = @store.recipes.build(recipe_params)

    if @recipe.save
      redirect_to  admin_recipe_path(@recipe.id)
    else
      render :new
    end
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.assign_attributes(recipe_params)
    
    if @recipe.valid?
      @recipe.update(recipe_params)
      redirect_to admin_recipe_path(@recipe)
    else
      @recipe.reload
      @recipe.update(recipe_parent_params)
      render:edit
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:image, :title, :serving, :store_id, :comment,:status, :category_id, procedures_attributes: [:id, :body, :_destroy],ingredients_attributes: [:id, :name, :amount, :_destroy])
  end
  
  def recipe_parent_params
    params.require(:recipe).permit(:image, :title, :serving, :store_id, :comment,:status, :category_id)
  end

end
