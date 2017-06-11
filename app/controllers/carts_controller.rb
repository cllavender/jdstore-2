class CartsController < ApplicationController
  before_action :authenticate_user!

  def clean
    current_cart.clean!
    flash[:warning] = "已清空购物车"
    redirect_to carts_path
  end

  def checkout
    @order = Order.new
  end

  def discount
    current_cart.use_discount
    redirect_to :back
  end

  def no_discount
    current_cart.do_not_use_discount
    redirect_to :back
  end

end
