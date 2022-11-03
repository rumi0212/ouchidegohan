class Admin::RecipesController < ApplicationController
  before_action :authenticate_admin!
  
  
  def new
    @recipe = Recipe.new
  end
  
  
end
