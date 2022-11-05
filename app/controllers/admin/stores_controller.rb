class Admin::StoresController < ApplicationController
  
  before_action :authenticate_admin!

  def index
    @stores = Store.page(params[:page]).per(10)
  end

  def new
    @store = Store.new
  end

  def show
    @store = Store.find(params[:id])
  end

  def edit
    @store = Store.find(params[:id])
  end

  def create
    @store = Store.new(store_params)
    if @store.save
      redirect_to  admin_store_path(@store)
    else
      render :new
    end
  end

  def update
    @store = Store.find(params[:id])
    if @store.update(store_params)
    redirect_to admin_store_path(@store)
    else
    render:edit
    end
  end

  private

  def store_params
    params.require(:store).permit(:image, :store_name, :introduction, :address, :telephone_number, :opening_hour, :category_id)
  end

  
end
