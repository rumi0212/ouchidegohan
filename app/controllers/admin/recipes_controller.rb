class Admin::RecipesController < ApplicationController
  before_action :authenticate_admin!


  def new
    @recipe = Recipe.new
    @ingredients = @recipe.ingredients.build
    @procedures = @recipe.procedures.build
  end

  def index
    @recipes = Recipe.page(params[:page]).per(10)
    @store = Store.find(params[:store_id])
  end

  def show
    @recipe = Recipe.find(params[:id])
    @store = Store.find(params[:store_id])
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def create
    @recipe = Recipe.new(recipe_params)
    @recipe.store_id = params[:store_id]

    if @recipe.save
      redirect_to  admin_store_recipe_path(store_id: params[:store_id], id: @recipe.id)
    else
      render :new
    end
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(recipe_params)
    redirect_to admin_store_recipe_path(@recipe)
    else
    render:edit
    end
  end

  private

  def recipe_params
    params.require(:recipe).permit(:image, :title, :serving, :store_id, :comment,:status, :category_id, procedures_attributes: [:body, :_destroy],ingredients_attributes: [:name, :amount, :_destroy])
  end

end
