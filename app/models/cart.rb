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

  def total_price
    sum = 0
    cart_items.each do |cart_item|
      if cart_item.product.price.present?
        sum1 = cart_item.product.price * cart_item.quantity
        sum2 = cart_item.product.child_price * cart_item.child_quantity
        sum +=  sum1 + sum2
      end
    end
    sum
  end

  def total_price_with_discount
    discount = current_user.total_point / 10
    sum = total_price - discount
    sum
  end

  def clean!
    cart_items.destroy_all
  end

end
