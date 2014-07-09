class CreateCurrentSlides < ActiveRecord::Migration
  def change
    create_table :current_slides do |t|
      t.integer :slide_id, null: false

      t.timestamps
    end
  end
end
