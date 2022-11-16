class Public::HomesController < ApplicationController

  def top
    @stores = Store.where(id: params[:category_id]).order(created_at: :desc)
    #@stores = Store.all.order(created_at: :asc)
  end

  def about
  end

end
