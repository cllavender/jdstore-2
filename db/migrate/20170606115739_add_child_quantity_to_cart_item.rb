class AddChildQuantityToCartItem < ActiveRecord::Migration[5.0]
  def change
    add_column :cart_items, :child_quantity, :integer
  end
end
