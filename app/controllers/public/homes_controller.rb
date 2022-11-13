class Public::HomesController < ApplicationController

  def top
    @stores = Store.all.order(created_at: :asc)
  end

  def about
  end

end
