class Public::BookmarksController < ApplicationController
  
  def create
    @recipe = Recipe.find(params[:recipe_id])
    # Recipeモデルからrecipe_idを探してくる
    current_customer.bookmark(@recipe)
    # ログイン中のユーザーと紐づけられたidを取ってくる。
  end
  
  def destroy
    @recipe = current_customer.bookmarks.find(params[:recipe_id]).recipe
    current_customer.unbookmark(@recipe)
    # redirect_backはユーザーが直前にリクエストを送ったページに戻す
    # fallback_location: デフォルトの設定
  end
  
end
