class CreateBikes < ActiveRecord::Migration[5.1]
  def change
    create_table :bikes do |t|
      t.integer :serial_no
      t.string :bike_type
      t.string :model

      t.timestamps
    end
  end
end
