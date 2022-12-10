class Public::HomesController < ApplicationController

  def top
    @stores = Store.where(id: params[:category_id]).order(created_at: :desc)
  end

  def about
  end

end
