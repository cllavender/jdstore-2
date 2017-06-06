class AddColumnsToProductList < ActiveRecord::Migration[5.0]
  def change
    add_column :product_lists, :child_price, :integer
    add_column :product_lists, :child_quantity, :integer
  end
end
