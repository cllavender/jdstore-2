class AddColumnsToProduct < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :destination, :string
    add_column :products, :day, :integer
    add_column :products, :night, :integer
    add_column :products, :child_price, :integer
    add_column :products, :child_quantity, :integer
  end
end
