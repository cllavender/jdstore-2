class CartItemsController < ApplicationController
  before_action :authenticate_user!

  def destroy
    @cart = current_cart
    @cart_item = @cart.cart_items.find_by(product_id: params[:id])
    @product = @cart_item.product
    @cart_item.destroy

    flash[:alert] = "成功将 #{@product.title} 从购物车删除！"
    redirect_to :back
  end

  def update
    @cart = current_cart
    @cart_item = @cart.cart_items.find_by(product_id: params[:id])
    if @cart_item.product.quantity >= cart_item_params[:quantity].to_i
      @cart_item.update(cart_item_params)
      flash[:notice] = "成功变更数量"
    else
      flash[:notice] = "数量不足以加入购物车"
    end
    redirect_to carts_path
  end

  def add_adult_quantity
    @cart_item = current_cart.cart_items.find_by_product_id(params[:id])
    if @cart_item.quantity < @cart_item.product.quantity
         @cart_item.quantity += 1
         @cart_item.save
         redirect_to carts_path
    elsif @cart_item.quantity == @cart_item.product.quantity
         redirect_to carts_path, alert: "库存不足！"
    end
  end

  def remove_adult_quantity
    @cart_item = current_cart.cart_items.find_by_product_id(params[:id])
    if @cart_item.quantity > 0
         @cart_item.quantity -= 1
         @cart_item.save
         redirect_to carts_path
    elsif @cart_item.quantity == 1
         redirect_to carts_path, alert: "商品不能少于1！"
    end
  end

    def add_child_quantity
      @cart_item = current_cart.cart_items.find_by_product_id(params[:id])
      if @cart_item.child_quantity < @cart_item.product.child_quantity
           @cart_item.child_quantity += 1
           @cart_item.save
           redirect_to carts_path
      elsif @cart_item.child_quantity == @cart_item.product.child_quantity
           redirect_to carts_path, alert: "库存不足！"
      end
    end

    def remove_child_quantity
      @cart_item = current_cart.cart_items.find_by_product_id(params[:id])
      if @cart_item.child_quantity > 0
           @cart_item.child_quantity -= 1
           @cart_item.save
           redirect_to carts_path
      elsif @cart_item.child_quantity == 0
           redirect_to carts_path, alert: "商品不能少于零！"
      end
  end

  private

  def cart_item_params
    params.require(:cart_item).permit(:quantity)
  end

end
