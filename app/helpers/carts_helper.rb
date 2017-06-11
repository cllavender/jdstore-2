module CartsHelper

  def render_cart_total_price(cart, total_point)
    cart.total_price(total_point)
  end

end
