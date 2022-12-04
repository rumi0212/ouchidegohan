class Public::CustomersController < ApplicationController

  def show
    @customer = current_customer
    @bookmarks = Bookmark.where(customer_id: current_customer.id)
    @arrange_recipes = ArrangeRecipe.where(customer_id: params[:id])
  end

  def edit
    @customer = current_customer
  end

  def update
    @customer = Customer.find(params[:id])
    @customer = current_customer
    if @customer.update(customer_params)
      redirect_to customer_path(current_customer)
    else
      render :edit
    end

  end

  def quit
    @customer = current_customer
  end

  def out
    @customer = current_customer
    @customer.update(is_deleted: true)
    reset_session
    flash[:notice] = "ありがとうございました。またのご利用を心よりお待ちしております。"
    redirect_to root_path
  end

  private

  def customer_params
    params.require(:customer).permit(:email, :name, :image)
  end

end
