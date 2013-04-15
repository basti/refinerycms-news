class AddFieldsToNewsItems < ActiveRecord::Migration
  def change
    add_column Refinery::News::Item.table_name, :teaser, :text
    add_column Refinery::News::Item.table_name, :image_area, :text
  end
end
