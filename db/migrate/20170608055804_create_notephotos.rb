class CreateNotephotos < ActiveRecord::Migration[5.0]
  def change
    create_table :notephotos do |t|
      t.integer :note_id
      t.string :img

      t.timestamps
    end
  end
end
