class CreateUserBikes < ActiveRecord::Migration[5.1]
  def change
    create_table :userbikes do |t|
      t.datetime :dt_rented
      t.datetime :dt_returned

      t.timestamps
    end
  end
end
