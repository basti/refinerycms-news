class AddCategoryToNewsItems < ActiveRecord::Migration
  def change
    add_column Refinery::News::Item.table_name, :category, :string
  end
end
