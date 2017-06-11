class Cart < ApplicationRecord
  has_many :cart_items
  has_many :products, through: :cart_items, source: :product

  def add_product_to_cart(product, quantity, child_quantity)
    ci = cart_items.build
    ci.product = product
    ci.quantity = quantity
    ci.child_quantity = child_quantity
    ci.save
  end

  def total_price(total_point)
    sum = 0
    discount = total_point / 10

    cart_items.each do |cart_item|
      if cart_item.product.price.present?
        sum1 = cart_item.product.price * cart_item.quantity
        sum2 = cart_item.product.child_price * cart_item.child_quantity
        sum +=  sum1 + sum2
      end
    end

    if sum > discount
      # 判断是否使用积分优惠，算不同的价钱
      if already_discount
        sum -= discount
      end
    else
      do_not_use_discount
    end

    sum
  end

  def already_discount?
    already_discount
  end

  def use_discount
    self.update_columns(already_discount: true)
  end

  def do_not_use_discount
    self.update_columns(already_discount: false)
  end

  def clean!
    cart_items.destroy_all
  end

end
