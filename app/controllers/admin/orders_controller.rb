class Admin::OrdersController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_require
  layout "admin"

  def index
    @orders = Order.order("id DESC")
  end

  def show
    @order = Order.find(params[:id])
    @product_lists = @order.product_lists
  end

  def reserve                                 #预定行程-->  ship
    @order = Order.find(params[:id])
    @order.reserve!
    OrderMailer.notify_ship(@order).deliver!
    redirect_to :back
  end

  def start                                   #开始行程-->  shipped
    @order = Order.find(params[:id])
    @order.start!
    redirect_to :back
  end

  def cancel
    @order = Order.find(params[:id])
    @order.cancel_trip!
    OrderMailer.notify_cancel(@order).deliver!
    redirect_to :back
  end

  def end
    @order = Order.find(params[:id])
    @order.end_trip!
    redirect_to :back
  end

end
