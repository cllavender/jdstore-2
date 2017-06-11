class CreateExperiences < ActiveRecord::Migration[5.0]
  def change
    create_table :experiences do |t|
      t.integer :user_id
      t.integer :note_id
      t.integer :point

      t.timestamps
    end
  end
end
