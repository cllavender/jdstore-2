class CreateNotes < ActiveRecord::Migration[5.0]
  def change
    create_table :notes do |t|
      t.integer :user_id
      t.string :foreword
      t.text :introduction
      t.string :destination1
      t.string :destination2
      t.string :destination3
      t.string :title1
      t.text :description1
      t.string :title2
      t.text :description2
      t.string :title3
      t.text :description3

      t.timestamps
    end
  end
end
