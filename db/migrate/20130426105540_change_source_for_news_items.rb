class ChangeSourceForNewsItems < ActiveRecord::Migration
  def up
    if Refinery::News::Item.column_names.map(&:to_sym).include?(:source)
      change_column Refinery::News::Item.table_name, :source, :text
    end
    if Refinery::News::Item::Translation.column_names.map(&:to_sym).include?(:source)
      change_column Refinery::News::Item::Translation.table_name, :source, :text
    end
  end

  def down
    if Refinery::News::Item.column_names.map(&:to_sym).include?(:source)
      change_column Refinery::News::Item.table_name, :source, :string
    end
    if Refinery::News::Item::Translation.column_names.map(&:to_sym).include?(:source)
      change_column Refinery::News::Item::Translation.table_name, :source, :string
    end
  end
end
