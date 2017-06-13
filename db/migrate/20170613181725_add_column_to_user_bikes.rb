class AddColumnToUserBikes < ActiveRecord::Migration[5.1]
  def change
    add_column :user_bikes, :user_id, :integer
    add_column :user_bikes, :bike_id, :integer
  end
end
