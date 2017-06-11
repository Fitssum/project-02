class AddColumnToBikes < ActiveRecord::Migration[5.1]
  def change
    add_column :bikes, :station_id, :integer
  end
end
