class RemoveTitleFromSlides < ActiveRecord::Migration
  def change
    remove_column :slides, :title, :string
  end
end
