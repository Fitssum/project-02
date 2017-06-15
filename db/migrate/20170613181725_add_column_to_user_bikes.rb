class AddColumnToUserBikes < ActiveRecord::Migration[5.1]
  def change
    add_column :userbikes, :user_id, :integer
    add_column :userbikes, :bike_id, :integer
  end
end
