class Admin::OrdersController < ApplicationController
  before_action :authenticate_user!
  before_action :admin_require
  layout "admin"

  def index
    @orders = Order.order("id DESC")
  end

end
