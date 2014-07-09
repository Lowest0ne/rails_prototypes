class CreateSlides < ActiveRecord::Migration
  def change
    create_table :slides do |t|
      t.string :title, null: false
      t.text  :content, null: false
      t.integer :next_slide_id
      t.integer :previous_slide_id

      t.timestamps
    end
  end
end
