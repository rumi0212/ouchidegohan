class Public::StoresController < ApplicationController
  
  def index
    @stores = Store.where(id: params[:category_id]).order(created_at: :desc)
    @categories = Category.all.page(params[:page]).per(4)
  end

  def show
    @store = Store.find(params[:id])
  end

  private
  
  def stores_params
    parmas.require(:store).permit(:store_name, :introduction, :address, :telephone_number, :opening_hour, :category_id)
  end

end
