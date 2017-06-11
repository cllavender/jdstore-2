class AddAlreadyDiscountToCart < ActiveRecord::Migration[5.0]
  def change
    add_column :carts, :already_discount, :boolean, default: false
  end
end
