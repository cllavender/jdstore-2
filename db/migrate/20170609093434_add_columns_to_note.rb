class AddColumnsToNote < ActiveRecord::Migration[5.0]
  def change
    add_column :notes, :description, :text
    add_column :notes, :end, :text
  end
end
