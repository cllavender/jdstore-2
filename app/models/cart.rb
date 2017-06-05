class Cart < ApplicationRecord
  has_many :cart_items
  has_many :products, through: :cart_items, source: :product

  def add_product_to_cart(product)
    ci = cart_items.build
    ci.product = product
    ci.quantity = 1
    ci.save
  end

  def total_price
    sum = 0
    cart_items.each do |cart_item|
      if cart_item.product.price.present?
        sum +=  cart_item.product.price * cart_item.quantity
      end
    end
    sum
  end

  def clean!
    cart_items.destroy_all
  end

  def add(product, quantity)
    # 判断商品是否已经在购物车中，在则修改数量，不再则新建cart_item
    if products.include?(product)
      cart_item = cart_items.find_by_product_id(product.id)
    else
      cart_item = cart_items.build
    end
    cart_item.product = product

    if quantity > 0
      cart_item.quantity = quantity
    else
      cart_item.quantity = 1
    end
    cart_item.save
  end

end
