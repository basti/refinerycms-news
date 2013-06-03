class AddEventDateToNewsItems < ActiveRecord::Migration
  def change
    add_column Refinery::News::Item.table_name, :event_date, :datetime
  end
end
