class Public::BookmarksController < ApplicationController
  before_action :authenticate_customer!

  def create
    recipe = Recipe.find(params[:recipe_id])
    bookmark = recipe.bookmarks.new(customer_id: current_customer.id)
    bookmark.save
    redirect_to request.referer
  end

  def destroy
    recipe= Recipe.find(params[:recipe_id])
    bookmark = recipe.bookmarks.find_by(customer_id: current_customer.id)
    bookmark.destroy if bookmark
    redirect_to request.referer
  end

end
