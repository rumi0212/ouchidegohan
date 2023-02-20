class Public::StoresController < ApplicationController

  def index
    @category = Category.find(params[:category_id])
    @stores = @category.stores.order(created_at: :desc).page(params[:page]).per(4)
    @categories = Category.all
  end

  def show
    @store = Store.find(params[:id])

  end

  private

  def stores_params
    parmas.require(:store).permit(:store_name, :introduction, :address, :telephone_number, :opening_hour, :category_id)
  end

end
