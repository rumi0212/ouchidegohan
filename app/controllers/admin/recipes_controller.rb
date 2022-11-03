class Admin::RecipesController < ApplicationController
  before_action :authenticate_admin!
  has_one_attached :image
  
  def new
    @recipe = Recipe.new
  end
  
  
end
